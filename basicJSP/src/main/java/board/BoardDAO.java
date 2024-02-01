package board;

import java.util.ArrayList;
import java.time.LocalDate;

public class BoardDAO {

	private int index;
	private int count;
	
	ArrayList<BoardVO> boardList;
	
	public BoardDAO() {
		boardList = new ArrayList<BoardVO>();
		count = 1;
		init();
	}
	
	private void init() {
		BoardVO v1 = new BoardVO(count++,"작성자1","2022-02-01","제목1","내용1");
		BoardVO v2 = new BoardVO(count++,"작성자2","2022-02-02","제목2","내용2");
		BoardVO v3 = new BoardVO(count++,"작성자3","2022-02-03","제목3","내용3");
		boardList.add(v1);
		boardList.add(v2);
		boardList.add(v3);
	}
	
	
	public int getLength() {
		int idx = 0;
		if(boardList == null) {
			return 0;
		}
		for(BoardVO v : boardList) {
			idx +=1 ;
		}
		return idx;
	}
	
	public BoardVO getOneMember(int idx) {
		index = idx;
		return boardList.get(idx);
	}
	
	public int getNumber(int idx) {
		return boardList.get(idx).getNo();
	}
	
	public void updateBoard(String sub , String cont) {
		BoardVO v = boardList.get(index);
		v.setSubject(sub);
		v.setContents(cont);
	}
	
	public void addDummy() {
		
		LocalDate date = LocalDate.now();
		
		for(int i = 0; i < 10; i+=1) {
			BoardVO v = new BoardVO(count, "작성자"+count, date.plusDays(i).toString(), "제목"+count,"내용"+count);
			count += 1;
			boardList.add(v);
		}
	}
	
	public void deleteAll() {
		boardList = new ArrayList<BoardVO>();
		count = 1;
	}

	public void deleteOne(int idx) {
		boardList.remove(idx);
	}
	
	public int getCount() {
		return count;
	}
	
	public void setCount(int count) {
		this.count = count;
	}

	public void addBoard(String writer, String sub, String cont) {
		
		LocalDate date = LocalDate.now();
		
		BoardVO v = new BoardVO(count++ , writer, date.toString(), sub , cont );
		boardList.add(v);
	}
	
}
	
	
