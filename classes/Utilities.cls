/**
 * Created 03.11.2020.
 */

public with sharing class Utilities {
    public static HttpResponse callOut(String endpoint, String method, Map<String, String> headers, String body, Blob bodyAsBlob) {
        Http h = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod(method);
        for (String key : headers != null ? headers.keySet() : new Set<String>()) {
            request.setHeader(key, headers.get(key));
        }
        if (String.isNotBlank(body)) {
            request.setBody(body);
        } else if (bodyAsBlob != null) {
            request.setBodyAsBlob(bodyAsBlob);
        }
        request.setTimeout(120000);

        return h.send(request);
    }

    public static HttpResponse callOut(String endpoint, String method, Map<String, String> headers, String body) {
        return callOut(endpoint, method, headers, body, null);
    }

    public static HttpResponse callOut(String endpoint, String method, Map<String, String> headers, Blob bodyAsBlob) {
        return callOut(endpoint, method, headers, null, bodyAsBlob);
    }
}