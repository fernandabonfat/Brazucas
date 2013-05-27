using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Brazucas.Models;

namespace Brazucas.Controllers
{
    public class RodadaController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /Rodada/

        public ActionResult Index()
        {
            var rodada = db.RODADA.Include(r => r.BOLAO).Include(r => r.FASE_JOGOS);
            return View(rodada.ToList());
        }

        //
        // GET: /Rodada/Details/5

        public ActionResult Details(int id = 0)
        {
            RODADA rodada = db.RODADA.Find(id);
            if (rodada == null)
            {
                return HttpNotFound();
            }
            return View(rodada);
        }

        //
        // GET: /Rodada/Create

        public ActionResult Create()
        {
            ViewBag.CODRODADA = new SelectList(db.BOLAO, "CODRODADA", "CODRODADA");
            ViewBag.CODFASE = new SelectList(db.FASE_JOGOS, "CODFASE", "DCRFASE");
            return View();
        }

        //
        // POST: /Rodada/Create

        [HttpPost]
        public ActionResult Create(RODADA rodada)
        {
            if (ModelState.IsValid)
            {
                db.RODADA.Add(rodada);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CODRODADA = new SelectList(db.BOLAO, "CODRODADA", "CODRODADA", rodada.CODRODADA);
            ViewBag.CODFASE = new SelectList(db.FASE_JOGOS, "CODFASE", "DCRFASE", rodada.CODFASE);
            return View(rodada);
        }

        //
        // GET: /Rodada/Edit/5

        public ActionResult Edit(int id = 0)
        {
            RODADA rodada = db.RODADA.Find(id);
            if (rodada == null)
            {
                return HttpNotFound();
            }
            ViewBag.CODRODADA = new SelectList(db.BOLAO, "CODRODADA", "CODRODADA", rodada.CODRODADA);
            ViewBag.CODFASE = new SelectList(db.FASE_JOGOS, "CODFASE", "DCRFASE", rodada.CODFASE);
            return View(rodada);
        }

        //
        // POST: /Rodada/Edit/5

        [HttpPost]
        public ActionResult Edit(RODADA rodada)
        {
            if (ModelState.IsValid)
            {
                db.Entry(rodada).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CODRODADA = new SelectList(db.BOLAO, "CODRODADA", "CODRODADA", rodada.CODRODADA);
            ViewBag.CODFASE = new SelectList(db.FASE_JOGOS, "CODFASE", "DCRFASE", rodada.CODFASE);
            return View(rodada);
        }

        //
        // GET: /Rodada/Delete/5

        public ActionResult Delete(int id = 0)
        {
            RODADA rodada = db.RODADA.Find(id);
            if (rodada == null)
            {
                return HttpNotFound();
            }
            return View(rodada);
        }

        //
        // POST: /Rodada/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            RODADA rodada = db.RODADA.Find(id);
            db.RODADA.Remove(rodada);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}