package com.LoginCheck.Bean;

import java.io.Serializable;

/**
 * Created by LHF on 2017/7/9.
 */
//Question Bean
public class Question implements Serializable {
    public String QuestionId;
    public String Type;
    public String Question;
    public String AnswerC;
    public String AnswerB1;
    public String AnswerB2;
    public String AnswerB3;
    public Question(String questionId, String type, String question, String answerC, String answerB1, String answerB2, String answerB3){
        this.QuestionId=questionId;
        this.Type=type;
        this.AnswerC=answerC;
        this.AnswerB1=answerB1;
        this.AnswerB2=answerB2;
        this.AnswerB3=answerB3;
    }
    Question(){

    }
    public void setQuestionId(String questionId){
        this.QuestionId=questionId;
    }
    public void setType(String type){
        this.Type=type;
    }
    public void setQuestion(String question){
        this.Question=question;
    }
    public void setAnswerC(String answerC){
        this.AnswerC=answerC;
    }
    public void setAnswerB1(String answerB1){
        this.AnswerB1=answerB1;
    }
    public void setAnswerB2(String answerB2){
        this.AnswerB2=answerB2;
    }
    public void setAnswerB3(String answerB3){
        this.AnswerB3=answerB3;
    }
    public String getQuestionId(){
        return this.QuestionId;
    }
    public String getType(){
        return this.Type;
    }
    public String getQuestion(){
        return this.Question;
    }
    public String getAnswerC(){
        return this.AnswerC;
    }
    public String getAnswerB1(){
        return this.AnswerB1;
    }
    public String getAnswerB2(){
        return this.AnswerB2;
    }
    public String getAnswerB3(){
        return this.AnswerB3;
    }
}
