﻿using ExtraSjaj.Common.Interfaces;
using ExtraSjaj.DAL.Context;
using System.Threading.Tasks;

namespace ExtraSjaj.DAL.RepoPattern
{
    public class UnitOfWork : IUnitOfWork
    { 
        private readonly ExtraSjajContext _context;

        public IMusterijaRepository Musterije { get; }
        public IRacunRepository Racuni { get; set; }
        public ITepihRepository Tepisi { get; set; }
        public IUserRepository Users { get; set; }
        public IRoleRepository Roles { get; set; }


        public UnitOfWork(ExtraSjajContext context)
        {
            _context = context;
            Musterije = new MusterijaRepository(_context);
            Racuni = new RacunRepository(_context);
            Tepisi = new TepihRepository(_context);
            Users = new UserRepository(_context);
            Roles = new RoleRepository(_context);
        }
        public int SaveChanges()
        {
            return _context.SaveChanges();
        }


        public async Task<int> SaveChangesAsync()
        {
            return await _context.SaveChangesAsync();
        }
        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
