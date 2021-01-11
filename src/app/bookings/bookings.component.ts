import { Component, OnInit } from '@angular/core';
import { PastBooks } from '../models/pastbook.model';
import { User } from '../models/user.model';
import { UserService } from '../services/user.service';

@Component({
  selector: 'app-bookings',
  templateUrl: './bookings.component.html',
  styleUrls: ['./bookings.component.css']
})
export class BookingsComponent implements OnInit {

  
  user: any;
 
  constructor(private userService:UserService) { 
      
  }
  
  ngOnInit(): void {
    this.userService.PastBooking(6).subscribe(u=>{this.user=u});  
  }

}
