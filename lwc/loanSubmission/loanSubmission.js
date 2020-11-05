import {api, LightningElement, track, wire} from 'lwc';
import getStatus from '@salesforce/apex/LoanSubmissionController.getStatus';
import sendToRV from '@salesforce/apex/LoanSubmissionController.sendToRV';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import {getRecord} from 'lightning/uiRecordApi';
import READY_TO_SEND_FIELD from '@salesforce/schema/Opportunity.Ready_to_Send__c';
import DATE_SENT_FIELD from '@salesforce/schema/Opportunity.Date_Sent__c';

export default class LoanSubmission extends LightningElement {
    @api recordId;

    @api cardTitle;
    @api preSendButtonLabel;
    @api sentButtonLabel;
    @api preSendNotReadyText;
    @api preSendReadyText;
    @api sentText;

    @track buttonLabel;
    @track isButtonDisabled;
    @track bodyText;
    @track isSpinner = false;

    @wire(getRecord, { recordId: '$recordId', fields: [READY_TO_SEND_FIELD, DATE_SENT_FIELD] })
    getRecordHandler({ data, error }) {
        if (data) {
            const state =
                (!data.fields[READY_TO_SEND_FIELD.fieldApiName].value && 'PreSendNotReady') ||
                (!data.fields[DATE_SENT_FIELD.fieldApiName].value && 'PreSendReady') ||
                'Sent';
            this.setStateDetails(state);
        }
    }

    connectedCallback() {
        this.showSpinner(true);
        getStatus({
            recordId: this.recordId
        })
            .then(result => {
                if (result['__status'] == 'success') {
                    this.setStateDetails(result['state']);
                } else {
                    this.displayNotification('Error', result['__msg'], 'error')
                }
            })
            .catch(e => this.displayNotification('Error', (e && e.body && e.body.message) || '', 'error'))
            .finally(() => {
                this.showSpinner(false);
            });
    }

    sendToRVHandler() {
        this.showSpinner(true);
        sendToRV({
            recordId: this.recordId
        })
            .then(result => {
                if (result['__status'] == 'success') {
                    this.setStateDetails('Sent');
                    this.displayNotification('Success', result['__msg'], 'success');
                } else {
                    this.displayNotification('Error', result['__msg'], 'error')
                }
            })
            .catch(e => this.displayNotification('Error', (e && e.body && e.body.message) || '', 'error'))
            .finally(() => {
                this.showSpinner(false);
            });
    }

    setStateDetails(state) {
        if (state === 'PreSendNotReady' || state === 'PreSendReady') {
            this.isButtonDisabled = state === 'PreSendNotReady';
            this.buttonLabel = this.preSendButtonLabel;
            this.bodyText = state === 'PreSendNotReady' ? this.preSendNotReadyText : this.preSendReadyText;
        } else if (state === 'Sent') {
            this.isButtonDisabled = true;
            this.buttonLabel = this.sentButtonLabel;
            this.bodyText = this.sentText;
        }
    }

    showSpinner = isShown => {
        this.isSpinner = isShown;
    }

    displayNotification(title, message, variant) {
        this.dispatchEvent(new ShowToastEvent({
            title: title,
            message: message,
            variant: variant
        }));
    }
}