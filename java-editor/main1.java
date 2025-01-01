import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.util.*;
import javax.swing.text.html.HTMLEditorKit;


public class main1 implements ActionListener {
	
	public JFrame f;
	private JEditorPane jxt;
	private JScrollPane jsp;
	
	int fileToOpen;
	int fileToSave;
	JFileChooser fileOpen;
	JFileChooser fileSave;
	int rm,cm;
		
	public main1()
	{
	
		f= new JFrame("MY WORD");
		f.setVisible(true);
		f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		f.setSize(1280,800);
	
		
		
		jxt = new JEditorPane();
		jxt.setContentType("text/html");
		jxt.setEditable(true);
		//jxt.setLineWrap(true);
		jsp = new JScrollPane(jxt,JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		f.add(jsp);
		
		
		f.setLocationRelativeTo(null);
		
		
		MenuBar Menubar = new MenuBar();
		f.setMenuBar(Menubar);
		//MenuItem menuitem = new MenuItem();
		Menu File = new Menu("File");
		Menubar.add(File);
		MenuItem newOption = new MenuItem("New");
		MenuItem open = new MenuItem("Open");
		MenuItem save = new MenuItem("Save");
		MenuItem close = new MenuItem("Exit");
		File.add(newOption);
		File.add(open);
		File.add(save);
		File.add(close);
		
		Menu Insert = new Menu("Insert");
		Menubar.add(Insert);
		MenuItem Insert_table = new MenuItem("Insert Table");
		MenuItem Draw_table = new MenuItem("Draw Table");
		MenuItem Convert_text_to_table = new MenuItem("Convert Text To Table");
		MenuItem Excel_spreadsheet = new MenuItem("Excel Spreadsheet");
		MenuItem Quick_tables = new MenuItem("Quick Tables");
		Insert.add(Insert_table);
		Insert.add(Draw_table);
		Insert.add(Convert_text_to_table);
		Insert.add(Excel_spreadsheet);
		Insert.add(Quick_tables);
	
		JToolBar toolbar = new JToolBar();
		toolbar.setRollover(true);
		f.add(toolbar,BorderLayout.NORTH);
		
	
		
		newOption.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e){
				jxt.setText("");
			}
		});
		
		open.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				openFile();
				if (fileToOpen == JFileChooser.APPROVE_OPTION){
					jxt.setText("");
					try{
						Scanner scan = new Scanner(new FileReader(fileOpen.getSelectedFile().getPath()));
						while (scan.hasNext())
						{
							
							jxt.setText(scan.nextLine());
							
						}
					} catch (Exception ex){
						System.out.println(ex.getMessage());
					}
				}
			}
		});
	
		save.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e){
				saveFile();
				if (fileToSave == JFileChooser.APPROVE_OPTION){
					try {
						BufferedWriter out = new BufferedWriter(new FileWriter(fileSave.getSelectedFile().getPath()));
						out.write(jxt.getText());
						out.close();
					} catch (Exception ex) {
						System.out.println(ex.getMessage());
					}
				}
			}
		});
		
		
		close.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e){
				System.exit(0);
			}
		});
		
		Insert_Table_Listener InsertTableL = new Insert_Table_Listener();
		Insert_table.addActionListener(InsertTableL);
		
		Draw_Table_listener DrawTableL = new Draw_Table_listener();
		Draw_table.addActionListener(DrawTableL);
	}	
	
	class Insert_Table_Listener implements ActionListener {  
		public void actionPerformed(ActionEvent ev) {
			Insert_table_button_ActionPerformed();
			}
	}
	
	class Draw_Table_listener implements ActionListener {
		public void actionPerformed(ActionEvent e) {
	    
			//jxt.append("akka");
		}
	}
	
	
	
	public void openFile(){
		JFileChooser open = new JFileChooser();
		int option = open.showOpenDialog(fileOpen);
		fileToOpen = option;
		fileOpen = open;
	}
	
	public void saveFile() {
		JFileChooser save = new JFileChooser();
		int option = save.showSaveDialog(fileSave);
		fileToSave = option;
		fileSave = save;
	}
	
	
	private void Insert_table_button_ActionPerformed() {
		//GEN-FIRST:event_Insert_table_button_ActionPerformed
        // TODO add your handling code here:
			Size s = new Size();
			f.setVisible(false);
		}
	
	public void Set_Focus() {
	   f.requestFocusInWindow();
	}
	
	
	public void Create_Table(int x,int y ,boolean nHr,boolean nFc,boolean nTr,boolean nLc,boolean nBr,boolean nBc )
	{
		
		StringBuffer si = new StringBuffer();
		si.append("<table border = '1' cellspacing = '0' cellpadding = '2' width = '80%'>");
		for(int i=0;i<x;i++)
		{
			if(nHr && i==0)	{	si.append("<tr bgcolor = '#FF0000'>");	} 
			else if(nTr) {si.append("<tr bgcolor = '#FF0000'>"); } 
			else if(nBr && (i%2)==0) { si.append("<tr bgcolor = '#FF0000'>"); } 
			else {si.append("<tr>"); }
	
			for(int j = 0;j<y;j++)
			{
				if(nFc && j==0){	si.append("<td bgcolor = '#FF0000'></td>");	  }  
				else if(nLc && j==y-1) { si.append("<td bgcolor = '#FF0000'></td>"); } 
				else if(nBc && (j%2)==1) { si.append("<td bgcolor = '#FF0000'></td>"); } 
				else {si.append("<td></td>"); }
			}
			
			si.append("</tr>");
		}
		si.append("</table><p>&nbsp;</p>");
		
		jxt.setText(si.toString());
		
		jxt.requestFocusInWindow();  	

	}
	
	
		
	public static void main(String args[]) {
		
		EventQueue.invokeLater(new Runnable()
        {
           public void run()
           {
        	 new main1();
           }
        });	
		
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		
	}

	
}
