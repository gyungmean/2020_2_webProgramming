package jspbook.pr03;

import java.util.ArrayList;
import java.util.List;

public class LectureManager {
	ArrayList<LectureBean> lectureList = new ArrayList<LectureBean>();
	private static final int times = 6;
	private static final int days = 5;
	private int[][] typeMatrix = new int[times][days];// 강의 타입
	private int[][] titleMatrix = new int[times][days];// 강의명
	private int[][] spanMatrix = new int[times][days];// 연강여부?

	public LectureManager() {
		for (int i = 0; i < times; i++) {
			for (int j = 0; j < days; j++) {
				typeMatrix[i][j] = 0;
				titleMatrix[i][j] = -1;
				spanMatrix[i][j] = 1;
			}
		}
	}

	public int[][] getTypeMatrix() {
		return typeMatrix;
	}

	public void setTypeMatrix(int[][] typeMatrix) {
		this.typeMatrix = typeMatrix;
	}

	public int[][] getTitleMatrix() {
		return titleMatrix;
	}

	public void setTitleMatrix(int[][] titleMatrix) {
		this.titleMatrix = titleMatrix;
	}

	public int[][] getSpanMatrix() {
		return spanMatrix;
	}

	public void setSpanMatrix(int[][] spanMatrix) {
		this.spanMatrix = spanMatrix;
	}

	public static int getTimes() {
		return times;
	}

	public static int getDays() {
		return days;
	}

	public void buildMatrix() {
		for (int i = 0; i < lectureList.size(); i++) {
			if (this.typeMatrix[lectureList.get(i).getTime()][lectureList.get(i).getDay()] == 0) {
				this.typeMatrix[lectureList.get(i).getTime()][lectureList.get(i).getDay()] = lectureList.get(i)
						.getType() + 1;
			}
			if (this.titleMatrix[lectureList.get(i).getTime()][lectureList.get(i).getDay()] == -1) {
				this.titleMatrix[lectureList.get(i).getTime()][lectureList.get(i).getDay()] = lectureList.get(i)
						.getTitle();
			}
			if (this.spanMatrix[lectureList.get(i).getTime()][lectureList.get(i).getDay()] == 1) {
				this.spanMatrix[lectureList.get(i).getTime()][lectureList.get(i).getDay()] = lectureList.get(i)
						.getConsecutive() + 1;
				if (times - lectureList.get(i).getTime() >= lectureList.get(i).getConsecutive() + 1) {
					for (int j = 0; j < lectureList.get(i).getConsecutive(); j++) {
						this.spanMatrix[lectureList.get(i).getTime() + 1 + j][lectureList.get(i).getDay()] = 0;
					}
				} else {
					this.typeMatrix[lectureList.get(i).getTime()][lectureList.get(i).getDay()] = 0;
					this.titleMatrix[lectureList.get(i).getTime()][lectureList.get(i).getDay()] = -1;
					this.spanMatrix[lectureList.get(i).getTime()][lectureList.get(i).getDay()] = 1;
				}
			}
		}
	}

	public void add(LectureBean lbean) {
		lectureList.add(lbean);
	}

	public List<LectureBean> getLectureList() {
		return lectureList;
	}

}
