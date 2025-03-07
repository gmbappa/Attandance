using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using HRTest.Data;
using HRTest.Models;

namespace HRTest.Controllers
{
    public class MaxPunchesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public MaxPunchesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: MaxPunches
        public async Task<IActionResult> Index()
        {
              return _context.MaxPunch != null ? 
                          View(await _context.MaxPunch.ToListAsync()) :
                          Problem("Entity set 'ApplicationDbContext.MaxPunch'  is null.");
        }

        // GET: MaxPunches/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.MaxPunch == null)
            {
                return NotFound();
            }

            var maxPunch = await _context.MaxPunch
                .FirstOrDefaultAsync(m => m.Id == id);
            if (maxPunch == null)
            {
                return NotFound();
            }

            return View(maxPunch);
        }

        // GET: MaxPunches/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: MaxPunches/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,MaxPunchRange,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,IsDeleted")] MaxPunch maxPunch)
        {
            if (ModelState.IsValid)
            {
                _context.Add(maxPunch);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(maxPunch);
        }

        // GET: MaxPunches/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.MaxPunch == null)
            {
                return NotFound();
            }

            var maxPunch = await _context.MaxPunch.FindAsync(id);
            if (maxPunch == null)
            {
                return NotFound();
            }
            return View(maxPunch);
        }

        // POST: MaxPunches/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,MaxPunchRange,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,IsDeleted")] MaxPunch maxPunch)
        {
            if (id != maxPunch.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(maxPunch);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MaxPunchExists(maxPunch.Id))
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
            return View(maxPunch);
        }

        // GET: MaxPunches/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.MaxPunch == null)
            {
                return NotFound();
            }

            var maxPunch = await _context.MaxPunch
                .FirstOrDefaultAsync(m => m.Id == id);
            if (maxPunch == null)
            {
                return NotFound();
            }

            return View(maxPunch);
        }

        // POST: MaxPunches/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.MaxPunch == null)
            {
                return Problem("Entity set 'ApplicationDbContext.MaxPunch'  is null.");
            }
            var maxPunch = await _context.MaxPunch.FindAsync(id);
            if (maxPunch != null)
            {
                _context.MaxPunch.Remove(maxPunch);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MaxPunchExists(int id)
        {
          return (_context.MaxPunch?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
