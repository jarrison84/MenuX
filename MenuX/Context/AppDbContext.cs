using MenuX.Models;
using Microsoft.EntityFrameworkCore;

namespace MenuX.Context
{
    public class AppDbContext:DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options): base(options) { }  
        
        public DbSet<TodoItem> TodoItems { get; set; }
    }
}
