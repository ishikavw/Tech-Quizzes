/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Package.entites;

/**
 *
 * @author Adminpc
/**
 *
 * @author Adminpc


attemptId
user_fk
subject
result

(marks)
 */

public class Mark {
    private  int AttemptId;
    private  int user_fk;
    private  int result;
    private  int c_result;
    private  int cz_result;
    private  int java_result;
    private  int py_result;
    private  String subject;

    public Mark() {
    }

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }

    public int getC_result() {
        return c_result;
    }

    public void setC_result(int c_result) {
        this.c_result = c_result;
    }

    public int getCz_result() {
        return cz_result;
    }

    public void setCz_result(int cz_result) {
        this.cz_result = cz_result;
    }

    public int getJava_result() {
        return java_result;
    }

    public void setJava_result(int java_result) {
        this.java_result = java_result;
    }

    public int getPy_result() {
        return py_result;
    }

    public void setPy_result(int py_result) {
        this.py_result = py_result;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public int getC_Result() {
        return c_result;
    }

    public void setC_Result(int result) {
        this.c_result = result;
    }
    
    public int getAttemptId() {
        return AttemptId;
    }

    public void setAttemptId(int AttemptId) {
        this.AttemptId = AttemptId;
    }
    
    public int getUser_fk() {
        return user_fk;
    }

    public void setUser_fk(int user_fk) {
        this.user_fk = user_fk;
    }
    
    
    
}
