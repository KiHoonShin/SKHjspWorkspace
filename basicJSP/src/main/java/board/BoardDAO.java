package board;

import java.util.ArrayList;

public class BoardDAO {

	private int index;
	private int count;
	
	ArrayList<BoardVO> boardList;
	
	public BoardDAO() {
		boardList = new ArrayList<BoardVO>();
		init();
		
	}
	
	private void init() {
		BoardVO v1 = new BoardVO(1,"작성자1","2022-02-01","제목1","내용1");
		BoardVO v2 = new BoardVO(2,"작성자2","2022-02-02","제목2","내용2");
		BoardVO v3 = new BoardVO(3,"작성자3","2022-02-03","제목3","내용3");
		count = 3;
		boardList.add(v1);
		boardList.add(v2);
		boardList.add(v3);
	}
	
	private void countNumber() {
		for(BoardVO v : boardList) {
			count = v.getNo()+1;
		}
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
		for(int i = 0; i < 10; i+=1) {
			BoardVO v = new BoardVO(count++, "작성자"+count, "2024-02-01", "제목"+count,"내용"+count);
			boardList.add(v);
		}
	}
	
	public void deleteAll() {
		boardList = new ArrayList<BoardVO>();
	}

	public int getCount() {
		countNumber();
		return count;
	}
	
	public void setCount(int count) {
		this.count = count;
	}

	public void addBoard(String writer, String sub, String cont) {
		BoardVO v = new BoardVO(count , writer, "2024-02-01", sub , cont );
		boardList.add(v);
	}
	
}
	
	
