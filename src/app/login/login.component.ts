import { Component, OnInit } from '@angular/core';
//import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms'
import { User } from '../models/user.model';
//import { AuthenticationService } from '../services/authentication.service';
import { UserService } from '../services/user.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  userLogin:User;
  user:any;
  msg:any;
  temp:any;
  user_id: any;

  constructor(private userService:UserService) {
    this.userLogin=new User();
    
   }

   onLogin(){
     this.userService.LoginCheckUsingApi(this.userLogin).subscribe(u=>{this.user=u;this.msg=undefined} 
       ,err=>{this.msg=err.error.Message;this.user=undefined}
       );       
       this.setsession(this.user);
   }

   setsession(data:any){
    this.user_id=data;
    sessionStorage.setItem('userid',JSON.stringify(this.user_id));
   }
  ngOnInit(): void {   
  }

}
