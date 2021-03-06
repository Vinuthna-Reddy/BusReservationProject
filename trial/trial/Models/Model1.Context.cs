﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace trial.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class Bus_ProjectEntities : DbContext
    {
        public Bus_ProjectEntities()
            : base("name=Bus_ProjectEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<admin> admins { get; set; }
        public virtual DbSet<Booking> Bookings { get; set; }
        public virtual DbSet<Bus_Details> Bus_Details { get; set; }
        public virtual DbSet<Coach_bus> Coach_bus { get; set; }
        public virtual DbSet<Guest> Guests { get; set; }
        public virtual DbSet<payment> payments { get; set; }
        public virtual DbSet<Registered_User> Registered_User { get; set; }
        public virtual DbSet<Seat> Seats { get; set; }
        public virtual DbSet<Travel> Travels { get; set; }
    
        public virtual ObjectResult<getallbusdetails_Result> getallbusdetails(string source, string dest, Nullable<System.DateTime> departure)
        {
            var sourceParameter = source != null ?
                new ObjectParameter("source", source) :
                new ObjectParameter("source", typeof(string));
    
            var destParameter = dest != null ?
                new ObjectParameter("dest", dest) :
                new ObjectParameter("dest", typeof(string));
    
            var departureParameter = departure.HasValue ?
                new ObjectParameter("departure", departure) :
                new ObjectParameter("departure", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<getallbusdetails_Result>("getallbusdetails", sourceParameter, destParameter, departureParameter);
        }
    
        public virtual ObjectResult<string> getpwd(Nullable<int> user_id)
        {
            var user_idParameter = user_id.HasValue ?
                new ObjectParameter("user_id", user_id) :
                new ObjectParameter("user_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("getpwd", user_idParameter);
        }
    
        public virtual ObjectResult<getseats_Result> getseats(Nullable<int> travelid)
        {
            var travelidParameter = travelid.HasValue ?
                new ObjectParameter("travelid", travelid) :
                new ObjectParameter("travelid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<getseats_Result>("getseats", travelidParameter);
        }
    
        public virtual int update_profile(Nullable<int> user_id, string fname, string lname, Nullable<decimal> phno)
        {
            var user_idParameter = user_id.HasValue ?
                new ObjectParameter("user_id", user_id) :
                new ObjectParameter("user_id", typeof(int));
    
            var fnameParameter = fname != null ?
                new ObjectParameter("fname", fname) :
                new ObjectParameter("fname", typeof(string));
    
            var lnameParameter = lname != null ?
                new ObjectParameter("lname", lname) :
                new ObjectParameter("lname", typeof(string));
    
            var phnoParameter = phno.HasValue ?
                new ObjectParameter("phno", phno) :
                new ObjectParameter("phno", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("update_profile", user_idParameter, fnameParameter, lnameParameter, phnoParameter);
        }
    
        public virtual int updatepwd(Nullable<int> user_id, string newpwd)
        {
            var user_idParameter = user_id.HasValue ?
                new ObjectParameter("user_id", user_id) :
                new ObjectParameter("user_id", typeof(int));
    
            var newpwdParameter = newpwd != null ?
                new ObjectParameter("newpwd", newpwd) :
                new ObjectParameter("newpwd", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("updatepwd", user_idParameter, newpwdParameter);
        }
    
        public virtual ObjectResult<getpastbookings_Result> getpastbookings(Nullable<int> user_id)
        {
            var user_idParameter = user_id.HasValue ?
                new ObjectParameter("user_id", user_id) :
                new ObjectParameter("user_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<getpastbookings_Result>("getpastbookings", user_idParameter);
        }
    
        public virtual ObjectResult<getavailbuses_Result> getavailbuses(string source, string dest, string departure)
        {
            var sourceParameter = source != null ?
                new ObjectParameter("source", source) :
                new ObjectParameter("source", typeof(string));
    
            var destParameter = dest != null ?
                new ObjectParameter("dest", dest) :
                new ObjectParameter("dest", typeof(string));
    
            var departureParameter = departure != null ?
                new ObjectParameter("departure", departure) :
                new ObjectParameter("departure", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<getavailbuses_Result>("getavailbuses", sourceParameter, destParameter, departureParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> sp_LoginCheck(string username, string password)
        {
            var usernameParameter = username != null ?
                new ObjectParameter("username", username) :
                new ObjectParameter("username", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("password", password) :
                new ObjectParameter("password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_LoginCheck", usernameParameter, passwordParameter);
        }
    }
}
