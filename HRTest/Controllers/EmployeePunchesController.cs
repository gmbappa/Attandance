using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using HRTest.Data;
using HRTest.Models;

namespace HRTest.Controllers
{
    public class EmployeePunchesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public EmployeePunchesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: EmployeePunches
        public async Task<IActionResult> Index(int? pageNumber, int pageSize = 10)
        {
            if (_context.EmployeePunches == null)
            {
                return Problem("Entity set 'ApplicationDbContext.EmployeePunches' is null.");
            }

            var punches = _context.EmployeePunches.AsQueryable();
           
            pageNumber ??= 1;           
            int totalRecords = await punches.CountAsync();
            
            var paginatedList = await punches
                .Skip((pageNumber.Value - 1) * pageSize)
                .Take(pageSize)
                .ToListAsync();
            
            ViewBag.CurrentPage = pageNumber.Value;
            ViewBag.PageSize = pageSize;
            ViewBag.TotalRecords = totalRecords;
            ViewBag.TotalPages = (int)Math.Ceiling((double)totalRecords / pageSize);

            return View(paginatedList);
        }

        // GET: EmployeePunches/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.EmployeePunches == null)
            {
                return NotFound();
            }

            var employeePunch = await _context.EmployeePunches
                .FirstOrDefaultAsync(m => m.Id == id);
            if (employeePunch == null)
            {
                return NotFound();
            }

            return View(employeePunch);
        }

        // GET: EmployeePunches/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: EmployeePunches/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,EmployeeId,Date,PunchTime,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,IsDeleted")] EmployeePunch employeePunch)
        {
            if (ModelState.IsValid)
            {
                _context.Add(employeePunch);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(employeePunch);
        }

        // GET: EmployeePunches/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.EmployeePunches == null)
            {
                return NotFound();
            }

            var employeePunch = await _context.EmployeePunches.FindAsync(id);
            if (employeePunch == null)
            {
                return NotFound();
            }
            return View(employeePunch);
        }

        // POST: EmployeePunches/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,EmployeeId,Date,PunchTime,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,IsDeleted")] EmployeePunch employeePunch)
        {
            if (id != employeePunch.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(employeePunch);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!EmployeePunchExists(employeePunch.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(employeePunch);
        }

        // GET: EmployeePunches/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.EmployeePunches == null)
            {
                return NotFound();
            }

            var employeePunch = await _context.EmployeePunches
                .FirstOrDefaultAsync(m => m.Id == id);
            if (employeePunch == null)
            {
                return NotFound();
            }

            return View(employeePunch);
        }

        // POST: EmployeePunches/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.EmployeePunches == null)
            {
                return Problem("Entity set 'ApplicationDbContext.EmployeePunch'  is null.");
            }
            var employeePunch = await _context.EmployeePunches.FindAsync(id);
            if (employeePunch != null)
            {
                _context.EmployeePunches.Remove(employeePunch);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool EmployeePunchExists(int id)
        {
          return (_context.EmployeePunches?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
