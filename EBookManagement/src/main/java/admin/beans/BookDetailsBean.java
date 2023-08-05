package admin.beans;

public class BookDetailsBean
{
	
		
		private String bookName; 
		public String getBookName() {
			return bookName;
		}
		public void setBookName(String bookName) {
			this.bookName = bookName;
		}
		public String getAutherName() {
			return autherName;
		}
		public void setAutherName(String autherName) {
			this.autherName = autherName;
		}
		public double getBookPrice() {
			return bookPrice;
		}
		public void setBookPrice(double bookPrice) {
			this.bookPrice = bookPrice;
		}
		public String getBookType() {
			return bookType;
		}
		public void setBookType(String bookType) {
			this.bookType = bookType;
		}
		public String getBookStatus() {
			return bookStatus;
		}
		public void setBookStatus(String bookStatus) {
			this.bookStatus = bookStatus;
		}
		public String getBookImg() {
			return bookImg;
		}
		public void setBookImg(String bookImg) {
			this.bookImg = bookImg;
		}
		private String autherName;
		
		public BookDetailsBean(String bookName, String autherName, double bookPrice, String bookType, String bookStatus,
				String bookImg) {
			super();
			this.setBookName(bookName);
			this.setAutherName(autherName);
			this.setBookPrice(bookPrice);
			this.setBookType(bookType);
			this.setBookStatus(bookStatus);
			this.setBookImg(bookImg);
		}
		public BookDetailsBean()
		{
			
		}
		private double bookPrice ;
		private String bookType;  
		private String bookStatus; 
		private String bookImg;

}
