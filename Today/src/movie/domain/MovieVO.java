package movie.domain;

import java.io.Serializable;

public class MovieVO implements Serializable {

	private String genre;
	private int code;
	private String images;
	private String title;
	private String url;
	private String director;
	private String synopsis;
	private String rd;
	private String grade;
	private String mspec;
	private String actor;
	private int price;
	
	public MovieVO() {
		
	}
	

	public MovieVO(String genre, int code, String images, String title, String url, String director, String synopsis,
			String rd, String grade, String mspec, String actor, int price) {
		super();
		this.genre = genre;
		this.code = code;
		this.images = images;
		this.title = title;
		this.url = url;
		this.director = director;
		this.synopsis = synopsis;
		this.rd = rd;
		this.grade = grade;
		this.mspec = mspec;
		this.actor = actor;
		this.price = price;
	}



	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getSynopsis() {
		return synopsis;
	}

	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}

	public String getRd() {
		return rd;
	}

	public void setRd(String rd) {
		this.rd = rd;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getMspec() {
		return mspec;
	}

	public void setMspec(String mspec) {
		this.mspec = mspec;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "MovieVO [genre=" + genre + ", code=" + code + ", images=" + images + ", title=" + title + ", url=" + url
				+ ", director=" + director + ", synopsis=" + synopsis + ", rd=" + rd + ", grade=" + grade + ", mspec="
				+ mspec + ", actor=" + actor + ", price=" + price + "]";
	}

}
