import { Component, OnInit } from '@angular/core';
import { User } from '../models/user.model';
import { UserService } from '../services/user.service';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit {

  show:boolean=true;
  user: any;
 
  constructor(private userService:UserService) { 
   
  }
  updateCustomerData(){
    this.userService.updateCustomer(6,this.user).subscribe(msg=>alert("updated")
      );
  }
  

  ngOnInit(): void {
    this.userService.ViewProfileDetails(6).subscribe(u=>{this.user=u});
    
  }

}
