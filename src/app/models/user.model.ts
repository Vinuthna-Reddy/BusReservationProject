export class User{
    user_id:number;
    fname:string;
    lname:string;
    username:string;
    password:string;
    phone_no:number;
    wallet:number;
    email_id:string;
    constructor(user_id:number=0,fname:string="",lname:string="",username:string="",password:string="",phone_no:number=0,
    wallet:number,email_id:string="")
    {
        this.user_id=user_id;
        this.fname=fname;
        this.lname=lname;
        this.username=username;
        this.password=password;
        this.phone_no=phone_no;
        this.wallet=wallet;
        this.email_id=email_id;
    }
}