import 'package:flutter/material.dart';

class UserSessionInfo with ChangeNotifier {
  late String user_id;
  late String user_pw;
  late String user_nm;
  late String email;
  // String emp_no;
  // String dept_no;
  // String mobl_phone;
  // String office_phone;
  // String position_cd;
  // String position_nm;
  // String dept_cd;
  // String dept_nm;
  // String photo_path;
  // String emp_tp_cd;
  // String job_desc;
  // String fax;
  // String use_at;
  // String reg_dt;
  // String reg_user_id;
  // String edit_dt;
  // String edit_user_id;
  // String gender;
  // String birth_dt;
  // String address;
  // String priv_cd;
  // String priv_st_ymd;
  // String priv_ed_ymd;
  // String use_yn;
  // String sys_cd;
  // String priv_tp;
  // String menuJsonString;
  // String client_ip;
  // String conn_type;
  // String lang;
  // String tzinfo;
  // String comm_code;
  // String user_token;
  // String year;
  // int total_holiday;
  // int used_holiday;
  // int rest_holiday;

  reset(){
    user_id = "";
    user_pw = "";
    user_nm = "";
    email = "";
  }

}
