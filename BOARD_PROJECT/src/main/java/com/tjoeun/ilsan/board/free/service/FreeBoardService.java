package com.tjoeun.ilsan.board.free.service;

import java.util.List;
import java.util.Map;

public interface FreeBoardService {
	
	public List<Map> list(Map map);

	public void write(Map map) throws Exception;
}
