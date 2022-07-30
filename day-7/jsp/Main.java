package jsp;

import java.sql.*;
import java.util.*;

import javax.servlet.annotation.ServletSecurity;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.*;


public class Main{
	public static void main(String[] args){
		Board b = new Board();
		
		for (BoardInfo board:b.getbords()) {
			System.out.print(board.getID()+"|");
			System.out.println(board.getCONTENT());
		}
	}
}