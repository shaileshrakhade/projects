

import java.awt.*;
import java.awt.event.*;
import javax.swing.text.DefaultHighlighter;
import javax.swing.text.Document;
import javax.swing.text.Highlighter;
import javax.swing.text.JTextComponent;

import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.Scanner;
import javax.swing.*;

public class main2 extends StringAlignUtils {
	private JFrame f;
	private JPanel p;
	private JToolBar Toolbar;
	private JTextArea jxt;
	private JScrollPane jsp;
	int fileToOpen;
	int fileToSave;
	JFileChooser fileOpen;
	JFileChooser fileSave;
	private static final String [] Shading_cb = {"RED","BLUE","GREEN","PINK","GRAY","YELLOW"};
	private static final String [] Spacing_cb = {"1.0", "1.15", "1.5", "2.0", "2.5", "3.0"};
	StringAlignUtils util;
	private Highlighter.HighlightPainter painter;
	
	public main2()
	{
	
			
		f= new JFrame("MY WORD");
		f.setVisible(true);
		f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		f.setSize(1280,800);
	
		p = new JPanel();
		
		jxt = new JTextArea(40,50);
		jxt.setLineWrap(true);
		jsp = new JScrollPane(jxt,JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		p.add(jsp);
		
		p.setLayout(new FlowLayout());
		f.setLocationRelativeTo(null);
		f.add(p);
		
		JToolBar Toolbar = new JToolBar();
//		f.add(Toolbar,BorderLayout.NORTH);
		Toolbar.setRollover(true);
		Toolbar.setVisible(true);
		f.add(Toolbar,BorderLayout.NORTH);
		
		Button tb = new Button("Left Align");
		Toolbar.add(tb);
		
		Toolbar.addSeparator();
		
		Button tb1 = new Button("Center");
		Toolbar.add(tb1);
		Toolbar.addSeparator();
		
		Button tb2 = new Button("Right Align");
		Toolbar.add(tb2);
		Toolbar.addSeparator();
		
		
		Button tb3 = new Button("Justify");
		Toolbar.add(tb3);
		Toolbar.addSeparator();
		
		JComboBox Spacing = new JComboBox<String>(Spacing_cb);
		Spacing.setRenderer(new MyComboBoxRenderer("Spacing"));
		Spacing.setSelectedIndex(-1);
		Spacing.setEditable(false);
		Toolbar.add(Spacing);
		Toolbar.addSeparator();
		
		JComboBox Shading = new JComboBox<String>(Shading_cb);
		Shading.setRenderer(new ShadingComboBoxRenderer("Shading"));
		Shading.setSelectedIndex(-1);
		Shading.setEditable(false);
		Toolbar.add(Shading);
		Toolbar.addSeparator();
		
		
		Button tb6 = new Button("Borders");
		Toolbar.add(tb6);
		Toolbar.addSeparator();
		
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
		
		Menu Paragraphing = new Menu("Paragraphing");
		Menu Shadingm =new Menu ("Shading");
		Menubar.add(Paragraphing);
		Paragraphing.add(Shadingm);
		
		MenuItem Align_Text_Left = new MenuItem("Align Text Left");
		MenuItem Align_Text_Center = new MenuItem("Center");
		MenuItem Align_Text_Right = new MenuItem("Align Text Right");
		MenuItem Text_Justify = new MenuItem("Justify");
		MenuItem Spacingm = new MenuItem("Spacing");
		
		 	
	//	MenuItem Shadingm = new MenuItem("Shading");

		
			MenuItem Borders = new MenuItem("Borders");
			Paragraphing.add(Align_Text_Left);
			Paragraphing.add(Align_Text_Center);
			Paragraphing.add(Align_Text_Right);
			Paragraphing.add(Text_Justify);
			Paragraphing.add(Spacingm);
			Paragraphing.add(Shadingm);
			Paragraphing.add(Borders);
			MenuItem RED = new MenuItem("RED");	
		    MenuItem BLUE = new MenuItem("BLUE");
		    MenuItem GREEN = new MenuItem("GREEN");
		    MenuItem GRAY = new MenuItem("GRAY");
		    MenuItem PINK = new MenuItem("PINK");
		    MenuItem YELLOW = new MenuItem("YELLOW");
			Shadingm.add(RED);
			Shadingm.add(BLUE);
			Shadingm.add(GREEN);
			Shadingm.add(GRAY);
			Shadingm.add(PINK);
			Shadingm.add(YELLOW);
		
	   
	    
		Align_Text_Left.addActionListener( new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				TextAlignItemListenerLeft();
			}
		});
	
		tb.addActionListener( new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					TextAlignItemListenerLeft();
				}
		});
	
	
		Align_Text_Right.addActionListener( new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				TextAlignItemListenerRight();
			}
		});
		
	
		tb2.addActionListener( new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					TextAlignItemListenerRight();
				}
		});
	
		Align_Text_Center.addActionListener( new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				TextAlignItemListenerCenter();
			
			}
		});
	
		tb1.addActionListener( new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					TextAlignItemListenerCenter();
				}
		});
		
		Shading.addActionListener( new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String o = String.valueOf(Shading.getSelectedItem());
				BgColorShad(o);
			}
		});
		
		RED.addActionListener( new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String o = "RED";
				BgColorShad(o);
			}
		});
	
		BLUE.addActionListener( new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String o = "BLUE";
				BgColorShad(o);
			}
		});
	
		GREEN.addActionListener( new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String o = "GREEN";
				BgColorShad(o);
			}
		});
	
		PINK.addActionListener( new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String o = "PINK";
				BgColorShad(o);
			}
		});
	
		YELLOW.addActionListener( new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String o = "YELLOW";
				BgColorShad(o);
			}
		});
	
		GRAY.addActionListener( new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String o = "GRAY";
				BgColorShad(o);
			}
		});
	
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
							jxt.append(scan.nextLine());
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
	

	class MyComboBoxRenderer extends JLabel implements ListCellRenderer
    {
        private String _title;

        public MyComboBoxRenderer(String title)
        {
            _title = title;
        }

        @Override
        public Component getListCellRendererComponent(JList list, Object value,
                int index, boolean isSelected, boolean hasFocus)
        {
            if (index == -1 && value == null) setText(_title);
            else setText(value.toString());
            return this;
        }
    }

	class ShadingComboBoxRenderer extends JLabel implements ListCellRenderer
    {
        private String _title;

        public ShadingComboBoxRenderer(String title)
        {
            _title = title;
        }

        @Override
        public Component getListCellRendererComponent(JList list, Object value,
                int index, boolean isSelected, boolean hasFocus)
        {
            if (index == -1 && value == null) setText(_title);
            else setText(value.toString());
            return this;
        }
    }
	
	private void TextAlignItemListenerLeft() {
		
		
		
				// TODO Auto-generated method stub
				String text1 = jxt.getSelectedText();
				if (text1==null)
				{
					StringAlignUtils util = new StringAlignUtils(175, Alignment.LEFT);
					jxt.append(util.format(text1));
					jxt.requestFocusInWindow();
				}
				else
				{
				StringAlignUtils util = new StringAlignUtils(175, Alignment.LEFT);
				jxt.setText(jxt.getText().replace(jxt.getSelectedText(), ""));
				jxt.append(util.format(text1));
				jxt.requestFocusInWindow();
				}
			
		
	}
	
	private void TextAlignItemListenerRight() {
		
		
		
		// TODO Auto-generated method stub
		String text1 = jxt.getSelectedText();
		if (text1==null)
		{
			StringAlignUtils util = new StringAlignUtils(175, Alignment.RIGHT);
			jxt.append(util.format(text1));
			jxt.requestFocusInWindow();
		}
		else
		{
		StringAlignUtils util = new StringAlignUtils(175, Alignment.RIGHT);
		jxt.setText(jxt.getText().replace(jxt.getSelectedText(), ""));
		jxt.append(util.format(text1));
		jxt.requestFocusInWindow();
		}
	

}

	private void TextAlignItemListenerCenter() {
		
		
		
		// TODO Auto-generated method stub
		String text1 = jxt.getSelectedText();
		if (text1==null)
		{
			StringAlignUtils util = new StringAlignUtils(175, Alignment.CENTER);
			jxt.append(util.format(text1));
			jxt.requestFocusInWindow();
		}
		else
		{
		StringAlignUtils util = new StringAlignUtils(175, Alignment.CENTER);
		jxt.setText(jxt.getText().replace(jxt.getSelectedText(), ""));
		jxt.append(util.format(text1));
		jxt.requestFocusInWindow();
		}
	

	}
	
	
	
	public void BgColorShad(String c) 
	{
		try {
			
			int startIndex = jxt.getSelectionStart();
            int endIndex = jxt.getSelectionEnd();
            Color b = Color.WHITE;
            if(c=="BLUE")
            {
            	b = Color.BLUE;
            } else if(c=="RED")
            {
            	b = Color.RED;
            } else if(c=="GREEN")
            {
            	b = Color.GREEN;
            } else if(c== "PINK")
            {
            	b= Color.PINK;
            } else if(c== "YELLOW")
            {
            	b= Color.YELLOW;
            } else if(c== "GRAY")
            {
            	b=Color.GRAY;
            }
			painter = new DefaultHighlighter.DefaultHighlightPainter(b);
            jxt.getHighlighter().addHighlight(startIndex, endIndex, painter);
			} catch (Exception ex) {
				System.out.println("my jjhhhx");
			}
	}


	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new main2();
	
	}
	


}
