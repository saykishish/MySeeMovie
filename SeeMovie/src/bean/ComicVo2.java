package bean;

import java.util.ArrayList;
import java.util.List;

public class ComicVo2{
	//所以這邊也不需要在 值做Collection 了，要addAll那是放多個list
	//直接 List<ComicVo> tempMapList = new ArrayList<>(); 資料要放甚麼就宣告泛型甚麼就好，宣告String 但是ComicVo是物件 所以放不了
	
	String name;
	String img;
	String year;
	
	String[] names;
	String[] imgs;
	String[] years;

	String oneCloth;

	public ComicVo2() {
		
	}

	public ComicVo2(String oneCloth) {
		this.oneCloth = oneCloth;
	}
	
	public ComicVo2(String name, String year, String img) {
		this.name = name; this.year = year; this.img = img;
	}

	public ComicVo2(String[] name, String[] year, String[] img) {
		this.names = name; this.years = year; this.imgs = img;
	}

	
	public String getName() {
		return name;
	}
	public String getImg() {
		return img;
	}
	public String getYear() {
		return year;
	}



	public void setName(String name) {
		this.name = name;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public void setYear(String year) {
		this.year = year;
	}

	


}
