﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Bandit.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class dbbarEntities : DbContext
    {
        public dbbarEntities()
            : base("name=dbbarEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Bar> Bar { get; set; }
        public virtual DbSet<Drink> Drink { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<SignIn> SignIn { get; set; }
    }
}
