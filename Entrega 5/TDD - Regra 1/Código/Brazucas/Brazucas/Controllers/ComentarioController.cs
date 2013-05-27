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
    public class ComentarioController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /Comentario/

        public ActionResult Index()
        {
            var comentarios = db.COMENTARIOS.Include(c => c.NOTICIAS).Include(c => c.USUARIOS);
            return View(comentarios.ToList());
        }

        //
        // GET: /Comentario/Details/5

        public ActionResult Details(int id = 0)
        {
            COMENTARIOS comentarios = db.COMENTARIOS.Find(id);
            if (comentarios == null)
            {
                return HttpNotFound();
            }
            return View(comentarios);
        }

        //
        // GET: /Comentario/Create

        public ActionResult Create()
        {
            ViewBag.CODNOT = new SelectList(db.NOTICIAS, "CODNOT", "TITULONOT");
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU");
            return View();
        }

        //
        // POST: /Comentario/Create

        [HttpPost]
        public ActionResult Create(COMENTARIOS comentarios)
        {
            if (ModelState.IsValid)
            {
                db.COMENTARIOS.Add(comentarios);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CODNOT = new SelectList(db.NOTICIAS, "CODNOT", "TITULONOT", comentarios.CODNOT);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", comentarios.CODUSU);
            return View(comentarios);
        }

        //
        // GET: /Comentario/Edit/5

        public ActionResult Edit(int id = 0)
        {
            COMENTARIOS comentarios = db.COMENTARIOS.Find(id);
            if (comentarios == null)
            {
                return HttpNotFound();
            }
            ViewBag.CODNOT = new SelectList(db.NOTICIAS, "CODNOT", "TITULONOT", comentarios.CODNOT);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", comentarios.CODUSU);
            return View(comentarios);
        }

        //
        // POST: /Comentario/Edit/5

        [HttpPost]
        public ActionResult Edit(COMENTARIOS comentarios)
        {
            if (ModelState.IsValid)
            {
                db.Entry(comentarios).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CODNOT = new SelectList(db.NOTICIAS, "CODNOT", "TITULONOT", comentarios.CODNOT);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", comentarios.CODUSU);
            return View(comentarios);
        }

        //
        // GET: /Comentario/Delete/5

        public ActionResult Delete(int id = 0)
        {
            COMENTARIOS comentarios = db.COMENTARIOS.Find(id);
            if (comentarios == null)
            {
                return HttpNotFound();
            }
            return View(comentarios);
        }

        //
        // POST: /Comentario/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            COMENTARIOS comentarios = db.COMENTARIOS.Find(id);
            db.COMENTARIOS.Remove(comentarios);
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