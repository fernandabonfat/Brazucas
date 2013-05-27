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
    public class EstadoJogoController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /EstadoJogo/

        public ActionResult Index()
        {
            return View(db.ESTADO_JOGOS.ToList());
        }

        //
        // GET: /EstadoJogo/Details/5

        public ActionResult Details(int id = 0)
        {
            ESTADO_JOGOS estado_jogos = db.ESTADO_JOGOS.Find(id);
            if (estado_jogos == null)
            {
                return HttpNotFound();
            }
            return View(estado_jogos);
        }

        //
        // GET: /EstadoJogo/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /EstadoJogo/Create

        [HttpPost]
        public ActionResult Create(ESTADO_JOGOS estado_jogos)
        {
            if (ModelState.IsValid)
            {
                db.ESTADO_JOGOS.Add(estado_jogos);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(estado_jogos);
        }

        //
        // GET: /EstadoJogo/Edit/5

        public ActionResult Edit(int id = 0)
        {
            ESTADO_JOGOS estado_jogos = db.ESTADO_JOGOS.Find(id);
            if (estado_jogos == null)
            {
                return HttpNotFound();
            }
            return View(estado_jogos);
        }

        //
        // POST: /EstadoJogo/Edit/5

        [HttpPost]
        public ActionResult Edit(ESTADO_JOGOS estado_jogos)
        {
            if (ModelState.IsValid)
            {
                db.Entry(estado_jogos).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(estado_jogos);
        }

        //
        // GET: /EstadoJogo/Delete/5

        public ActionResult Delete(int id = 0)
        {
            ESTADO_JOGOS estado_jogos = db.ESTADO_JOGOS.Find(id);
            if (estado_jogos == null)
            {
                return HttpNotFound();
            }
            return View(estado_jogos);
        }

        //
        // POST: /EstadoJogo/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            ESTADO_JOGOS estado_jogos = db.ESTADO_JOGOS.Find(id);
            db.ESTADO_JOGOS.Remove(estado_jogos);
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