/**
 * Created 07.09.2020.
 */

import {LightningElement, api, track} from 'lwc';
import getOpportunityNotes from '@salesforce/apex/OpportunityNotesController.retrieveNotes';
import getActiveUsers from '@salesforce/apex/OpportunityNotesController.retrieveActiveUsers';
import saveNoteAction from '@salesforce/apex/OpportunityNotesController.saveNote';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class OpportunityNotes extends LightningElement {
    @api set recordId(val) {
        if (val) {
            this._recordId = val;
            this.doInit();
        }
    }
    get recordId() {
        return this._recordId;
    }

    header = 'New Note';

    @track isError = false;
    @track error;
    @track isSpinner = true;
    notes = [];
    @track activeUsers = [];
    @track isNewNoteBtnDisabled = true;
    @track newNote = {
        selectedNotifyUsers: [],
        note: null
    }

    handleChangeNote(event) {
        this.newNote.note = event.target.value
        this.isNewNoteBtnDisabled = !this.newNote.note
    }
    handleOpenModal() {
        const modal = this.template.querySelector('c-modal-window');
        if (modal) {
            modal.show();
        }
    }
    handleCancelModal() {
        const modal = this.template.querySelector('c-modal-window');
        if (modal) {
            modal.hide();
        }
    }
    saveNote() {
        saveNoteAction({
            params: {
                opportunityId: this.recordId,
                notifyUsers: this.newNote.selectedNotifyUsers,
                note: this.newNote.note
            }
        })
            .then(result => {
                if (result['__status'] == 'success') {
                    this.notes = [result['note'], ...this.notes]
                    this.displayNotification('Success', 'Note successfully created', 'success')
                } else {
                    this.displayNotification('Error', result['__msg'], 'error')
                }

            })
            .catch(e => this.processError(e))
            .finally(() => {
                this.handleCancelModal()
            });
    }
    handleChangeNotifyUsers(event) {
        this.newNote.selectedNotifyUsers = event.detail.value;
    }
    doInit() {
        if (this.recordId) {
            this.showSpinner(true);
            getOpportunityNotes({
                opportunityId: this.recordId
            })
                .then(result => {
                    if (result['__status'] == 'success') {
                        this.notes = result['wraps']
                    } else {
                        this.displayNotification('Error', result['__msg'], 'error')
                    }
                })
                .catch(e => this.processError(e))
                .finally(() => {
                    this.showSpinner(false);
                    this.fetchActiveUsers()
                });

        }
    }
    fetchActiveUsers() {
        getActiveUsers()
            .then(result => {
                if (result['__status'] == 'success') {
                    this.activeUsers = result['wraps'].map(user => ({label: user.name, value: user.id}))
                } else {
                    this.displayNotification('Error', result['__msg'], 'error')
                }
            })
            .catch(e => this.processError(e));
    }
    showSpinner = isShown => {
        this.isSpinner = isShown;
    }

    processError(error) {
        if (error && error.body && error.body.message) {
            this.error = error.body.message;
            this.isError = true;
        }
    }

    displayNotification(title, message, variant) {
        this.dispatchEvent(new ShowToastEvent({
            title: title,
            message: message,
            variant: variant
        }));
    }
}