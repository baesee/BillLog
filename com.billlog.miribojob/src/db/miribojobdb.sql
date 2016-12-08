CREATE TABLE `tb_interview` (
`iidx`  int(255) NOT NULL AUTO_INCREMENT COMMENT '인터뷰 인덱스' ,
`iname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 이름' ,
`isex`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 성별' ,
`ijob`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 직업' ,
`ijobcd`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 직업코드' ,
`ijikjongcd`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 직종코드' ,
`idetailjob`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 세부직업명' ,
`ianswer1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 답변1' ,
`ianswer2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 답변2' ,
`ianswer3`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 답변3' ,
`ianswer4`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 답변4' ,
`ianswer5`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 답변5' ,
`ianswer6`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 답변6' ,
`ianswer7`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 답변7' ,
`ianswer8`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 답변8' ,
`ianswer9`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 답변9' ,
`ianswer10`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 답변10' ,
`content`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 내용' ,
`ipwd`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰글 패스워드(인터뷰자가 글 수정,삭제, 덧글을 위해 필요)' ,
`iyearmoney`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 연봉' ,
`ijobtime`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 업무시간(하루 평균시간)' ,
`iyearofjob`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '인터뷰자 근속년수' ,
`regdate`  date NULL DEFAULT NULL COMMENT '인터뷰 등록일자' ,
PRIMARY KEY (`iidx`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=223
CHECKSUM=0
ROW_FORMAT=DYNAMIC
DELAY_KEY_WRITE=0
;

CREATE TABLE `tb_jobcode` (
`idx`  int(255) NOT NULL AUTO_INCREMENT COMMENT '직종 코드 인덱스' ,
`jobcd`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '직업코드' ,
`jikjongcd`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '직종코드' ,
PRIMARY KEY (`idx`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=1
CHECKSUM=0
ROW_FORMAT=DYNAMIC
DELAY_KEY_WRITE=0
;

CREATE TABLE `tb_question` (
`idx`  int(11) NOT NULL AUTO_INCREMENT COMMENT '질문TB 인덱스' ,
`question_group_cd`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '질문 그룹코드' ,
`question1`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '질문1' ,
`question2`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '질문2' ,
`question3`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '질문3' ,
`question4`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '질문4' ,
`question5`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '질문5' ,
`question6`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '질문6' ,
`question7`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '질문7' ,
`question8`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '질문8' ,
`question9`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '질문9' ,
`question10`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '비고' ,
`regdate`  date NULL DEFAULT NULL COMMENT '질문 등록일자' ,
PRIMARY KEY (`idx`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3
CHECKSUM=0
ROW_FORMAT=DYNAMIC
DELAY_KEY_WRITE=0
;


CREATE TABLE `tb_user` (
`idx`  int(255) NOT NULL AUTO_INCREMENT COMMENT '인덱스' ,
`user_id`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '사용자ID' ,
`user_pw`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '사용자 비밀번호' ,
`user_nm`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '사용자 이름' ,
`last_login_date`  datetime NULL DEFAULT NULL COMMENT '마지막 로그인 날짜' ,
`user_role`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '계정 권한(99 : 관리자, 1 : 사용자)' ,
PRIMARY KEY (`idx`, `user_id`)
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='사용자 테이블'
AUTO_INCREMENT=8
CHECKSUM=0
ROW_FORMAT=DYNAMIC
DELAY_KEY_WRITE=0
;



