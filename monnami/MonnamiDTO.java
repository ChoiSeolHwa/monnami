package com.monnami;

public class MonnamiDTO {

	//review
	private int review_id;
	private String review_subject;
	private String review_content;
	private String review_date;
	private String review_ip;
	private int review_count;
	private String review_saveFileName;
	private String review_originalFileName;
	
	//story
	private int story_id;
	private String story_subject;
	private String story_content;
	private int story_count;
	
	//storyReview
	private int storyReview_id;
	private String storyReview_content;
	private String storyReview_ip;
	private String storyReview_date;
	
	//basket
	private int basket_id;
	
	//buy
	private int buy_id;
	private String buy_date;
	
	//notice
	private int notice_id;
	private String notice_subject;
	private String notice_content;
	
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public String getReview_subject() {
		return review_subject;
	}
	public void setReview_subject(String review_subject) {
		this.review_subject = review_subject;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public String getReview_date() {
		return review_date;
	}
	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}
	public String getReview_ip() {
		return review_ip;
	}
	public void setReview_ip(String review_ip) {
		this.review_ip = review_ip;
	}
	public int getReview_count() {
		return review_count;
	}
	public void setReview_count(int review_count) {
		this.review_count = review_count;
	}
	public String getReview_saveFileName() {
		return review_saveFileName;
	}
	public void setReview_saveFileName(String review_saveFileName) {
		this.review_saveFileName = review_saveFileName;
	}
	public String getReview_originalFileName() {
		return review_originalFileName;
	}
	public void setReview_originalFileName(String review_originalFileName) {
		this.review_originalFileName = review_originalFileName;
	}
	public int getStory_id() {
		return story_id;
	}
	public void setStory_id(int story_id) {
		this.story_id = story_id;
	}
	public String getStory_subject() {
		return story_subject;
	}
	public void setStory_subject(String story_subject) {
		this.story_subject = story_subject;
	}
	public String getStory_content() {
		return story_content;
	}
	public void setStory_content(String story_content) {
		this.story_content = story_content;
	}
	public int getStory_count() {
		return story_count;
	}
	public void setStory_count(int story_count) {
		this.story_count = story_count;
	}
	public int getStoryReview_id() {
		return storyReview_id;
	}
	public void setStoryReview_id(int storyReview_id) {
		this.storyReview_id = storyReview_id;
	}
	public String getStoryReview_content() {
		return storyReview_content;
	}
	public void setStoryReview_content(String storyReview_content) {
		this.storyReview_content = storyReview_content;
	}
	public String getStoryReview_ip() {
		return storyReview_ip;
	}
	public void setStoryReview_ip(String storyReview_ip) {
		this.storyReview_ip = storyReview_ip;
	}
	public String getStoryReview_date() {
		return storyReview_date;
	}
	public void setStoryReview_date(String storyReview_date) {
		this.storyReview_date = storyReview_date;
	}

	public int getBasket_id() {
		return basket_id;
	}
	public void setBasket_id(int basket_id) {
		this.basket_id = basket_id;
	}
	public int getBuy_id() {
		return buy_id;
	}
	public void setBuy_id(int buy_id) {
		this.buy_id = buy_id;
	}
	public String getBuy_date() {
		return buy_date;
	}
	public void setBuy_date(String buy_date) {
		this.buy_date = buy_date;
	}
	public int getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}
	public String getNotice_subject() {
		return notice_subject;
	}
	public void setNotice_subject(String notice_subject) {
		this.notice_subject = notice_subject;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

}

