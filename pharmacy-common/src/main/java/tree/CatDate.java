package tree;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class CatDate {

	/*@JsonProperty("u")
	private String url;
	@JsonProperty("n")
	private String name;
	@JsonProperty("i")
	private List<Object> item;
	*/


    private String url;

    private String name;

    private List<CatDate> item;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<CatDate> getItem() {
		return item;
	}

	public void setItem(List<CatDate> item) {
		this.item = item;
	}

	@Override
	public String toString() {
		return "CatDate{" +
				"url='" + url + '\'' +
				", name='" + name + '\'' +
				", item=" + item +
				'}';
	}
}
