package com.drug.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;

import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

@SuppressWarnings("deprecation")
public class PythonCall {

	@SuppressWarnings("deprecation")
	public List<String> executeMultiPartRequest(String urlString, String path) throws Exception {

		String output = null;
		List<String> respons = new ArrayList<String>();
		HttpClient client = new DefaultHttpClient();
		HttpPost postRequest = new HttpPost(urlString);
		ArrayList<NameValuePair> postParameters;
		try {

			System.out.println("============path===========" + path);

			// Send request

			postParameters = new ArrayList<NameValuePair>();
			postParameters.add(new BasicNameValuePair("path", path));
//			postParameters.add(new BasicNameValuePair("courseid", courseid));
//			postParameters.add(new BasicNameValuePair("activityid", actid));

			postRequest.setEntity(new UrlEncodedFormEntity(postParameters, "UTF-8"));
			HttpResponse response = client.execute(postRequest);
			System.out.println("-Response-----" + response.getStatusLine().getStatusCode());
			// Verify response if any
			if (response != null) {

				BufferedReader br = new BufferedReader(new InputStreamReader((response.getEntity().getContent()))); // Getting
							
				System.out.println("Output from Server .... \n");
				while ((output = br.readLine()) != null) {
					respons.add(output);
					System.out.println(output); // Instead of this, you could append all your response to a StringBuffer
												// and use `toString()` to get the entire JSON response as a String.
					// This string json response can be parsed using any json library. Eg. GSON from
					// Google.

					br.close();

					return respons;
				}
			} else {
				return null;
			}
		} catch (Exception ex) {
			return null;
		}
		return respons;

	}
}
