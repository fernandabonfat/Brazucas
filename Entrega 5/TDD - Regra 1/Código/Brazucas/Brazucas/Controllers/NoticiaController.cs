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
    public class NoticiaController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /Visualizar/

        public ActionResult Visualizar()
        {
            return View();
        }

        //
        // GET: /Noticia/

        public ActionResult Index()
        {
            var noticias = db.NOTICIAS.Include(n => n.CATEGORIAS).Include(n => n.USUARIOS);
            return View(noticias.ToList());
        }

        //
        // GET: /Noticia/Details/5

        public ActionResult Details(int id = 0)
        {
            NOTICIAS noticias = db.NOTICIAS.Find(id);
            if (noticias == null)
            {
                return HttpNotFound();
            }
            return View(noticias);
        }

        //
        // GET: /Noticia/Create

        public ActionResult Create()
        {
            ViewBag.CODCAT = new SelectList(db.CATEGORIAS, "CODCAT", "DCRCAT");
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU");
            return View();
        }

        //
        // POST: /Noticia/Create

        [HttpPost]
        public ActionResult Create(NOTICIAS noticias)
        {
            if (ModelState.IsValid)
            {
                db.NOTICIAS.Add(noticias);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CODCAT = new SelectList(db.CATEGORIAS, "CODCAT", "DCRCAT", noticias.CODCAT);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", noticias.CODUSU);
            return View(noticias);
        }

        //
        // GET: /Noticia/Edit/5

        public ActionResult Edit(int id = 0)
        {
            NOTICIAS noticias = db.NOTICIAS.Find(id);
            if (noticias == null)
            {
                return HttpNotFound();
            }
            ViewBag.CODCAT = new SelectList(db.CATEGORIAS, "CODCAT", "DCRCAT", noticias.CODCAT);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", noticias.CODUSU);
            return View(noticias);
        }

        //
        // POST: /Noticia/Edit/5

        [HttpPost]
        public ActionResult Edit(NOTICIAS noticias)
        {
            if (ModelState.IsValid)
            {
                db.Entry(noticias).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CODCAT = new SelectList(db.CATEGORIAS, "CODCAT", "DCRCAT", noticias.CODCAT);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", noticias.CODUSU);
            return View(noticias);
        }

        //
        // GET: /Noticia/Delete/5

        public ActionResult Delete(int id = 0)
        {
            NOTICIAS noticias = db.NOTICIAS.Find(id);
            if (noticias == null)
            {
                return HttpNotFound();
            }
            return View(noticias);
        }

        //
        // POST: /Noticia/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            NOTICIAS noticias = db.NOTICIAS.Find(id);
            db.NOTICIAS.Remove(noticias);
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