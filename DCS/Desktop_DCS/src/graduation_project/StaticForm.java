/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package graduation_project;

import java.io.FileOutputStream;
import java.sql.ResultSet;
import javax.swing.JFileChooser;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

/**
 *
 * @author Ali
 */
public class StaticForm extends javax.swing.JFrame {

    /**
     * Creates new form StaticForm
     */
    public StaticForm() {
        initComponents();
        this.setLocationRelativeTo(null);
        String g="SELECT deptname FROM `department` ORDER BY dept_id ASC";
        Dbase.fillcompo(jComboBox1,g);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jComboBox1 = new javax.swing.JComboBox();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(0, 153, 204));

        jComboBox1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jComboBox1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        jComboBox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox1ActionPerformed(evt);
            }
        });

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jButton1.setText("اجمالي الطلاب لقسم معين ");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jButton2.setText("اجمالي الطلاب المسجلين على البرنامج ");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jButton3.setText("اجمالي الطلاب الذكور ");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jButton4.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jButton4.setText("اجمالي الطلاب الاناث ");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jButton5.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jButton5.setText("اجمالي الطلاب الذكور لقسم معين  ");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jButton6.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jButton6.setText("اجمالي الطلاب الاناث  لقسم معين  ");
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel1.setText("الاحصائيات الخاصة  بالفرقة الاولى بالكلية ");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel1)
                .addGap(41, 41, 41))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addContainerGap(14, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, 176, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(35, 35, 35)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jButton4, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 261, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jButton1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGap(0, 0, Short.MAX_VALUE))
                            .addComponent(jButton5, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 261, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jButton6, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 261, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addContainerGap())
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(108, 108, 108))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addComponent(jButton2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addContainerGap())))))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jButton3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        jPanel1Layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {jButton1, jButton2, jButton3, jButton4, jButton5, jButton6});

        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jButton6, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(37, 37, 37))))
        );

        jPanel1Layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {jButton1, jButton2, jButton3, jButton4, jButton5, jButton6});

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jComboBox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBox1ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        try{
 
String sql="select name,ssn from student where gend_id=1";
HSSFWorkbook wb = new HSSFWorkbook();
HSSFSheet personSheet = wb.createSheet(" طلاب الذكور");
HSSFRow headerRow = personSheet.createRow(0);
HSSFCell nameHeaderCell = headerRow.createCell(0);
HSSFCell addressHeaderCell = headerRow.createCell(1);

         
            ResultSet rs= Dbase.executeSelect(sql);
         
         int row =0;
      
         while (rs.next()){
             
         String name=  rs.getString("name");
         String ssn=rs.getString("ssn");
       
    HSSFRow dataRow = personSheet.createRow(row);

    HSSFCell dataNameCell = dataRow.createCell(0);
    
    dataNameCell.setCellValue(name);

    HSSFCell dataAddressCell = dataRow.createCell(1);
     
    dataAddressCell.setCellValue(ssn);

    row = row + 1;
                }
       

        String out = "F:/"+"الطلاب الذكور بالكلية.xls";
        FileOutputStream fileOut;
      
             fileOut = new FileOutputStream(out);
             wb.write(fileOut);
             fileOut.close();
             Dbase.op("تم حفظ الملف ف "+out);
                }catch(Exception ex)
                {
                   Dbase.op(ex.getMessage());
                } 
      
    
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        
        try{
 int index= jComboBox1.getSelectedIndex();
String sql="select name,ssn from student where dept_id="+index;
HSSFWorkbook wb = new HSSFWorkbook();
HSSFSheet personSheet = wb.createSheet("طلاب القسم ");
HSSFRow headerRow = personSheet.createRow(0);
HSSFCell nameHeaderCell = headerRow.createCell(0);
HSSFCell addressHeaderCell = headerRow.createCell(1);

         
            ResultSet rs= Dbase.executeSelect(sql);
         
            /*header*/
             HSSFRow data = personSheet.createRow(0);

    HSSFCell c = data.createCell(0);
    
    c.setCellValue("م ");
    
    HSSFCell b = data.createCell(1);
    
    b.setCellValue("الاسم ");

    HSSFCell d = data.createCell(2);
     
    d.setCellValue("الرقم القـــــــومي ");
    /***/
            
         int row =1;
      
         while (rs.next()){
             
         String name=  rs.getString("name");
         String ssn=rs.getString("ssn");
       
    HSSFRow dataRow = personSheet.createRow(row);

     HSSFCell id = dataRow.createCell(0);
    
    id.setCellValue(row);
    HSSFCell dataNameCell = dataRow.createCell(1);
    
    dataNameCell.setCellValue(name);

    HSSFCell dataAddressCell = dataRow.createCell(2);
     
    dataAddressCell.setCellValue(ssn);

    row = row + 1;
                }
        String path="";
        JFileChooser jc = new JFileChooser();
             int chooservalue = jc.showSaveDialog(this);
             if(chooservalue==JFileChooser.APPROVE_OPTION)
             {
               path = jc.getSelectedFile().getAbsolutePath();
             }
        String out = path+".xls";
        FileOutputStream fileOut;
      
             fileOut = new FileOutputStream(out);
             wb.write(fileOut);
             fileOut.close();
             Dbase.op("تم حفظ الملف ف "+out);
                }catch(Exception ex)
                {
                   Dbase.op(ex.getMessage());
                } 
      
    
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        
        try{
 
String sql="select name,ssn from student";
HSSFWorkbook wb = new HSSFWorkbook();
HSSFSheet personSheet = wb.createSheet("اجمالي طلاب الفرقة الاولى بالكلبة  ");
HSSFRow headerRow = personSheet.createRow(0);
HSSFCell nameHeaderCell = headerRow.createCell(0);
HSSFCell addressHeaderCell = headerRow.createCell(1);

         
            ResultSet rs= Dbase.executeSelect(sql);
         
         
            /*header*/
             HSSFRow data = personSheet.createRow(0);

    HSSFCell c = data.createCell(0);
    
    c.setCellValue("م ");
    
    HSSFCell b = data.createCell(1);
    
    b.setCellValue("الاسم ");

    HSSFCell d = data.createCell(2);
     
    d.setCellValue("الرقم القـــــــومي ");
    /***/
            
         int row =1;
      
         while (rs.next()){
             
         String name=  rs.getString("name");
         String ssn=rs.getString("ssn");
       
    HSSFRow dataRow = personSheet.createRow(row);

     HSSFCell id = dataRow.createCell(0);
    
    id.setCellValue(row);
    HSSFCell dataNameCell = dataRow.createCell(1);
    
    dataNameCell.setCellValue(name);

    HSSFCell dataAddressCell = dataRow.createCell(2);
     
    dataAddressCell.setCellValue(ssn);

    row = row + 1;
                }
       
         String path="";
        JFileChooser jc = new JFileChooser();
             int chooservalue = jc.showSaveDialog(this);
             if(chooservalue==JFileChooser.APPROVE_OPTION)
             {
               path = jc.getSelectedFile().getAbsolutePath();
             }
        String out = path+".xls";
         FileOutputStream fileOut;
      
             fileOut = new FileOutputStream(out);
             wb.write(fileOut);
             fileOut.close();
             
            
             
             Dbase.op("تم حفظ الملف ف "+out);
                }catch(Exception ex)
                {
                   Dbase.op(ex.getMessage());
                } 
      
    
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        // TODO add your handling code here:
         try{
 
String sql="select name,ssn from student where gend_id=2";
HSSFWorkbook wb = new HSSFWorkbook();
HSSFSheet personSheet = wb.createSheet(" طلاب الاناث");
HSSFRow headerRow = personSheet.createRow(0);
HSSFCell nameHeaderCell = headerRow.createCell(0);
HSSFCell addressHeaderCell = headerRow.createCell(1);

         
            ResultSet rs= Dbase.executeSelect(sql);
         
         
            /*header*/
             HSSFRow data = personSheet.createRow(0);

    HSSFCell c = data.createCell(0);
    
    c.setCellValue("م ");
    
    HSSFCell b = data.createCell(1);
    
    b.setCellValue("الاسم ");

    HSSFCell d = data.createCell(2);
     
    d.setCellValue("الرقم القـــــــومي ");
    /***/
            
         int row =1;
      
         while (rs.next()){
             
         String name=  rs.getString("name");
         String ssn=rs.getString("ssn");
       
    HSSFRow dataRow = personSheet.createRow(row);

     HSSFCell id = dataRow.createCell(0);
    
    id.setCellValue(row);
    HSSFCell dataNameCell = dataRow.createCell(1);
    
    dataNameCell.setCellValue(name);

    HSSFCell dataAddressCell = dataRow.createCell(2);
     
    dataAddressCell.setCellValue(ssn);

    row = row + 1;
                }
       
                String path="";
        JFileChooser jc = new JFileChooser();
             int chooservalue = jc.showSaveDialog(this);
             if(chooservalue==JFileChooser.APPROVE_OPTION)
             {
               path = jc.getSelectedFile().getAbsolutePath();
             }
        String out = path+".xls";
        
         FileOutputStream fileOut;
      
             fileOut = new FileOutputStream(out);
             wb.write(fileOut);
             fileOut.close();
             Dbase.op("تم حفظ الملف ف "+out);
                }catch(Exception ex)
                {
                   Dbase.op(ex.getMessage());
                } 
      
    
                                        

        
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        // TODO add your handling code here:
        try{
            int index = jComboBox1.getSelectedIndex();
            String namedept = jComboBox1.getSelectedItem().toString();
        String sql="select name,ssn from student where gend_id=1 and dept_id="+index;
HSSFWorkbook wb = new HSSFWorkbook();
HSSFSheet personSheet = wb.createSheet(" الطلاب الذكور بقسم"+namedept);
HSSFRow headerRow = personSheet.createRow(0);
HSSFCell nameHeaderCell = headerRow.createCell(0);
HSSFCell addressHeaderCell = headerRow.createCell(1);

            ResultSet rs= Dbase.executeSelect(sql);
         
         
            /*header*/
             HSSFRow data = personSheet.createRow(0);

    HSSFCell c = data.createCell(0);
    
    c.setCellValue("م ");
    
    HSSFCell b = data.createCell(1);
    
    b.setCellValue("الاسم ");

    HSSFCell d = data.createCell(2);
     
    d.setCellValue("الرقم القـــــــومي ");
    /***/
            
         int row =1;
      
         while (rs.next()){
             
         String name=  rs.getString("name");
         String ssn=rs.getString("ssn");
       
    HSSFRow dataRow = personSheet.createRow(row);

     HSSFCell id = dataRow.createCell(0);
    
    id.setCellValue(row);
    HSSFCell dataNameCell = dataRow.createCell(1);
    
    dataNameCell.setCellValue(name);

    HSSFCell dataAddressCell = dataRow.createCell(2);
     
    dataAddressCell.setCellValue(ssn);

    row = row + 1;
                }
       
                String path="";
        JFileChooser jc = new JFileChooser();
             int chooservalue = jc.showSaveDialog(this);
             if(chooservalue==JFileChooser.APPROVE_OPTION)
             {
               path = jc.getSelectedFile().getAbsolutePath();
             }
        String out = path+".xls";
         FileOutputStream fileOut;
      
             fileOut = new FileOutputStream(out);
             wb.write(fileOut);
             fileOut.close();
             Dbase.op("تم حفظ الملف ف "+out);
                }catch(Exception ex)
                {
                   Dbase.op(ex.getMessage());
                } 
      
    
        
        
        
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
        // TODO add your handling code here:
        
        try{
            int index = jComboBox1.getSelectedIndex();
            String namedept = jComboBox1.getSelectedItem().toString();
        String sql="select name,ssn from student where gend_id=2 and dept_id="+index;
HSSFWorkbook wb = new HSSFWorkbook();
HSSFSheet personSheet = wb.createSheet(" الطلاب الاناث  بقسم"+namedept);
HSSFRow headerRow = personSheet.createRow(0);
HSSFCell nameHeaderCell = headerRow.createCell(0);
HSSFCell addressHeaderCell = headerRow.createCell(1);

            ResultSet rs= Dbase.executeSelect(sql);
         
         
            /*header*/
             HSSFRow data = personSheet.createRow(0);

    HSSFCell c = data.createCell(0);
    
    c.setCellValue("م ");
    
    HSSFCell b = data.createCell(1);
    
    b.setCellValue("الاسم ");

    HSSFCell d = data.createCell(2);
     
    d.setCellValue("الرقم القـــــــومي ");
    /***/
            
         int row =1;
      
         while (rs.next()){
             
         String name=  rs.getString("name");
         String ssn=rs.getString("ssn");
       
    HSSFRow dataRow = personSheet.createRow(row);

     HSSFCell id = dataRow.createCell(0);
    
    id.setCellValue(row);
    HSSFCell dataNameCell = dataRow.createCell(1);
    
    dataNameCell.setCellValue(name);

    HSSFCell dataAddressCell = dataRow.createCell(2);
     
    dataAddressCell.setCellValue(ssn);

    row = row + 1;
                }
       
                String path="";
        JFileChooser jc = new JFileChooser();
             int chooservalue = jc.showSaveDialog(this);
             if(chooservalue==JFileChooser.APPROVE_OPTION)
             {
               path = jc.getSelectedFile().getAbsolutePath();
             }
        String out = path+".xls";
         FileOutputStream fileOut;
      
             fileOut = new FileOutputStream(out);
             wb.write(fileOut);
             fileOut.close();
             Dbase.op("تم حفظ الملف ف "+out);
                }catch(Exception ex)
                {
                   Dbase.op(ex.getMessage());
                } 
      
    
        
        
        
    }//GEN-LAST:event_jButton6ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(StaticForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(StaticForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(StaticForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(StaticForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new StaticForm().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    // End of variables declaration//GEN-END:variables
}
