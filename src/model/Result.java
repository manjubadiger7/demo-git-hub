package model;

public class Result {

	private int id;
	private int subjectId;
	private int studentId;
	private int totalMarks;
	private int acheivedMarks;
	private String grades;

	public Result(int subjectId, int studentId, int totalMarks, int acheivedMarks, String grades) {
		super();
		this.subjectId = subjectId;
		this.studentId = studentId;
		this.totalMarks = totalMarks;
		this.acheivedMarks = acheivedMarks;
		this.grades = grades;
	}

	public Result(int id, int subjectId, int studentId, int totalMarks, int acheivedMarks, String grades) {
		super();
		this.id = id;
		this.subjectId = subjectId;
		this.studentId = studentId;
		this.totalMarks = totalMarks;
		this.acheivedMarks = acheivedMarks;
		this.grades = grades;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public int getTotalMarks() {
		return totalMarks;
	}

	public void setTotalMarks(int totalMarks) {
		this.totalMarks = totalMarks;
	}

	public int getAcheivedMarks() {
		return acheivedMarks;
	}

	public void setAcheivedMarks(int acheivedMarks) {
		this.acheivedMarks = acheivedMarks;
	}

	public String getGrades() {
		return grades;
	}

	public void setGrades(String grades) {
		this.grades = grades;
	}

}
