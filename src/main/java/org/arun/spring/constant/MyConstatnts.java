package org.arun.spring.constant;

public class MyConstatnts {
	public final static String[] category = { "All", "Actors", "Actress", "Movie Poster", "Abstract", "Sci-Fi",
			"Vehicles", "Flowers", "Cartoon", "Background", "Nature", "HD" };
	public final static String[] music_category = { "Recent", "Hit", "Movie", "Hindi", "Telugu", "Tamil", "Bengali",
			"Odia", "English" };
	public final static String googleAPIKey = "AIzaSyDf1aE0F53ArHGA2bUbiEA9LwwfN_QTkaU";
	public final static String newsAPIkey1 = "dc602ee35ff04088884c5a2b02e78589";
	public final static String newsAPIkey2 = "c6d9d095631b484ebd1fef4865dd3e38";
	public static int NEWSSTATICVALUE = 1;

	public final static int USER_ROLE_ADMIN = 1;
	public final static int USER_ROLE_EDITOR = 2;
	public final static int USER_ROLE_CUSTOMER = 3;

	public static String NEWS_CATEGORY_RECENT = "RECENT";
	public static String NEWS_CATEGORY_CRICKET = "CRICKET";
	public static String NEWS_CATEGORY_SPORTS = "SPORTS";
	public static String NEWS_CATEGORY_INDIA = "INDIA";
	public static String NEWS_CATEGORY_ENTERTAINMENT = "ENTERTAINMENT";
	public static String NEWS_CATEGORY_MOVIE = "MOVIE";
	public static String NEWS_CATEGORY_TECH = "TECH";
	public static String NEWS_CATEGORY_BUSINESS = "BUSINESS";

	public static String[] RECENT_NEWS_URL = {};
	public static String[] CRICKET_NEWS_URL = { "https://newsapi.org/v2/top-headlines?sources=abc-news&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=mtv-news&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=the-guardian-uk&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=time&apiKey=" };
	public static String[] SPORTS_NEWS_URL = { "https://newsapi.org/v2/top-headlines?sources=espn-cric-info&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=four-four-two&apiKey=",
			"https://newsapi.org/v2/everything?sources=espn&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=bbc-sport&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=fox-sports&apiKey=" };
	public static String[] INDIA_NEWS_URL = { "https://newsapi.org/v2/top-headlines?sources=the-hindu&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=the-times-of-india&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=",
			"https://newsapi.org/v2/everything?sources=the-hindu&apiKey=",
			"https://newsapi.org/v2/everything?sources=the-times-of-india&apiKey=" };
	public static String[] ENTERTAINMENT_NEWS_URL = { "https://newsapi.org/v2/everything?sources=buzzfeed&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=entertainment-weekly&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=the-lad-bible&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=mashable&apiKey=",
			"https://newsapi.org/v2/everything?sources=daily-mail&apiKey=" };
	public static String[] MOVIE_NEWS_URL = { "https://newsapi.org/v2/top-headlines?sources=mtv-news&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=entertainment-weekly&apiKey=",
			"https://newsapi.org/v2/everything?sources=mtv-news&apiKey=",
			"https://newsapi.org/v2/everything?sources=entertainment-weekly&apiKey=" };
	public static String[] TECH_NEWS_URL = { "https://newsapi.org/v2/everything?sources=hacker-news&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=engadget&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=techradar&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=" };
	public static String[] BUSSINESS_NEWS_URL = {
			"https://newsapi.org/v2/top-headlines?sources=financial-times&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=the-economist&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=business-insider&apiKey=",
			"https://newsapi.org/v2/top-headlines?sources=info-money&apiKey=" };
}
