package com.myweb.vo;

public class MemberVO {
	String mid, mname, addr, hp, mdate, pass;
	//hp가 여러 덩어리로 나누어져 있으면 나눠져 있는 친구들을 묶어야 한다.
	
	//pass의 setter, getter를 추가하자!
	//순서가 여기선 딱히 중요하진 않다.

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getMdate() {
		return mdate;
	}

	public void setMdate(String mdate) {
		this.mdate = mdate;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
	
}
