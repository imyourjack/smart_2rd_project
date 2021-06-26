package model;

public class wonduVO {   //원두 VO
    
	private int reco_idx;  // 추천 인덱스
	private String wondu_n; // 원두 네임
	private String user_idx;  //유저 번호
	public int getReco_idx() {
		return reco_idx;
	}
	public void setReco_idx(int reco_idx) {
		this.reco_idx = reco_idx;
	}
	public String getWondu_n() {
		return wondu_n;
	}
	public void setWondu_n(String wondu_n) {
		this.wondu_n = wondu_n;
	}
	public String getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(String user_idx) {
		this.user_idx = user_idx;
	}
	
	
}
