package com.jh.yogiyo.store.detail;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewAplyVO {

   private long num;
   private long storeNum;
   private long reviewNum;
   private String id;
   private String replyContents;
   private Date regDate;
}