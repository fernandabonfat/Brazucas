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
    public class FaseJogoController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /FaseJogo/

        public ActionResult Index()
        {
            return View(db.FASE_JOGOS.ToList());
        }

        //
        // GET: /FaseJogo/Details/5

        public ActionResult Details(int id = 0)
        {
            FASE_JOGOS fase_jogos = db.FASE_JOGOS.Find(id);
            if (fase_jogos == null)
            {
                return HttpNotFound();
            }
            return View(fase_jogos);
        }

        //
        // GET: /FaseJogo/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /FaseJogo/Create

        [HttpPost]
        public ActionResult Create(FASE_JOGOS fase_jogos)
        {
            if (ModelState.IsValid)
            {
                db.FASE_JOGOS.Add(fase_jogos);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(fase_jogos);
        }

        //
        // GET: /FaseJogo/Edit/5

        public ActionResult Edit(int id = 0)
        {
            FASE_JOGOS fase_jogos = db.FASE_JOGOS.Find(id);
            if (fase_jogos == null)
            {
                return HttpNotFound();
            }
            return View(fase_jogos);
        }

        //
        // POST: /FaseJogo/Edit/5

        [HttpPost]
        public ActionResult Edit(FASE_JOGOS fase_jogos)
        {
            if (ModelState.IsValid)
            {
                db.Entry(fase_jogos).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(fase_jogos);
        }

        //
        // GET: /FaseJogo/Delete/5

        public ActionResult Delete(int id = 0)
        {
            FASE_JOGOS fase_jogos = db.FASE_JOGOS.Find(id);
            if (fase_jogos == null)
            {
                return HttpNotFound();
            }
            return View(fase_jogos);
        }

        //
        // POST: /FaseJogo/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            FASE_JOGOS fase_jogos = db.FASE_JOGOS.Find(id);
            db.FASE_JOGOS.Remove(fase_jogos);
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