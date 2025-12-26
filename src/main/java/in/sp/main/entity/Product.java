package in.sp.main.entity;

import org.springframework.web.multipart.MultipartFile;

import in.sp.main.urls.OtherUrls;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name="coursename")
	private String coursename;
	
	@Column(name="Syllabus")
	private String Syllabus;
	
	@Column(name="originalprice")
	private String originalprice;
	
	@Column(name="discountprice")
	private String discountprice;
	
	@Column(name="coursevalidity")
	private String coursevalidity;
	
	@Column(name="course_img_url")
	private String courseimage;
	
	@Column(name="trainername")
	private String trainername;
	
	@Column(name="trainerdtails")
	private String trainerdtails;
	
	@Column(name="")
	private String trainerimage;
	
	@Column(name="otherdetails")
	private String otherdetails;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCoursename() {
		return coursename;
	}
	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}
	public String getSyllabus() {
		return Syllabus;
	}
	public void setSyllabus(String syllabus) {
		Syllabus = syllabus;
	}
	public String getOriginalprice() {
		return originalprice;
	}
	public void setOriginalprice(String originalprice) {
		this.originalprice = originalprice;
	}
	public String getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(String discountprice) {
		this.discountprice = discountprice;
	}
	public String getCoursevalidity() {
		return coursevalidity;
	}
	public void setCoursevalidity(String coursevalidity) {
		this.coursevalidity = coursevalidity;
	}
	public String getCourseimage() {
		return courseimage;
	}
	public void setCouseimage(MultipartFile file) {
		this.courseimage = OtherUrls.IMAGE_UPLOAD_URL + file.getOriginalFilename();
	}
	public String getTrainername() {
		return trainername;
	}
	public void setTrainername(String trainername) {
		this.trainername = trainername;
	}
	public String getTrainerdtails() {
		return trainerdtails;
	}
	public void setTrainerdtails(String trainerdtails) {
		this.trainerdtails = trainerdtails;
	}
	public String getTrainerimage() {
		return trainerimage;
	}
	public void setTrainerimage(MultipartFile file) {
		this.trainerimage = OtherUrls.IMAGE_UPLOAD_URL + file.getOriginalFilename();
	}
	public String getOtherdetails() {
		return otherdetails;
	}
	public void setOtherdetails(String otherdetails) {
		this.otherdetails = otherdetails;
	}
	
	
}
