package com.bluemobi.util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
/**
 * post请求
 * @author liuchuang
 */
public class MapPost {
	public static void main(String[] args) throws ParseException {
		String url="http://.....";//接口
		Map<String, String> params=new HashMap<String, String>();
		String str = MapPost.post(url, params);
		System.out.println("值=="+str);
	}
	public static String post(String url, Map<String, String> params)
			throws ParseException {
		DefaultHttpClient httpclient = new DefaultHttpClient();
		String body = null;
		HttpPost post = sendPost(url, params);
		body = invoke(httpclient, post);
		httpclient.getConnectionManager().shutdown();
		return body;
	}

	private static String invoke(DefaultHttpClient httpclient,
			HttpUriRequest httpost) throws ParseException {

		HttpResponse response = sendRequest(httpclient, httpost);
		String body = paseResponse(response);

		return body;
	}

	private static HttpResponse sendRequest(DefaultHttpClient httpclient,
			HttpUriRequest httpost) {
		HttpResponse response = null;
		try {
			response = httpclient.execute(httpost);
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return response;
	}

	private static String paseResponse(HttpResponse response)
			throws ParseException {
		HttpEntity entity = response.getEntity();
		//String charset = EntityUtils.getContentCharSet(entity);
		String body = null;
		try {
			body = EntityUtils.toString(entity);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return body;
	}

	private static HttpPost sendPost(String url, Map<String, String> params) {
		HttpPost httpost = new HttpPost(url);
		List<NameValuePair> nvps = new ArrayList<NameValuePair>();
		Set<String> keySet = params.keySet();
		for (String key : keySet) {
			nvps.add(new BasicNameValuePair(key, params.get(key)));
		}
		try {
			httpost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return httpost;
	}
	
	
}
