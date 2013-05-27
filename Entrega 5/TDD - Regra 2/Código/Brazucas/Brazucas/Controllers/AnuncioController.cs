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
    public class AnuncioController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /Anuncio/

        public ActionResult Index()
        {
            var anuncios = db.ANUNCIOS.Include(a => a.CATEGORIAS).Include(a => a.CIDADE_SEDE).Include(a => a.USUARIOS);
            return View(anuncios.ToList());
        }

        //
        // GET: /Anuncio/Details/5

        public ActionResult Details(int id = 0)
        {
            ANUNCIOS anuncios = db.ANUNCIOS.Find(id);
            if (anuncios == null)
            {
                return HttpNotFound();
            }
            return View(anuncios);
        }

        //
        // GET: /Anuncio/Create

        public ActionResult Create()
        {
            ViewBag.CODCAT = new SelectList(db.CATEGORIAS, "CODCAT", "DCRCAT");
            ViewBag.CODCID = new SelectList(db.CIDADE_SEDE, "CODCID", "NOMCID");
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU");
            return View();
        }

        //
        // POST: /Anuncio/Create

        [HttpPost]
        public ActionResult Create(ANUNCIOS anuncios)
        {
            if (ModelState.IsValid)
            {
                db.ANUNCIOS.Add(anuncios);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CODCAT = new SelectList(db.CATEGORIAS, "CODCAT", "DCRCAT", anuncios.CODCAT);
            ViewBag.CODCID = new SelectList(db.CIDADE_SEDE, "CODCID", "NOMCID", anuncios.CODCID);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", anuncios.CODUSU);
            return View(anuncios);
        }

        //
        // GET: /Anuncio/Edit/5

        public ActionResult Edit(int id = 0)
        {
            ANUNCIOS anuncios = db.ANUNCIOS.Find(id);
            if (anuncios == null)
            {
                return HttpNotFound();
            }
            ViewBag.CODCAT = new SelectList(db.CATEGORIAS, "CODCAT", "DCRCAT", anuncios.CODCAT);
            ViewBag.CODCID = new SelectList(db.CIDADE_SEDE, "CODCID", "NOMCID", anuncios.CODCID);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", anuncios.CODUSU);
            return View(anuncios);
        }

        //
        // POST: /Anuncio/Edit/5

        [HttpPost]
        public ActionResult Edit(ANUNCIOS anuncios)
        {
            if (ModelState.IsValid)
            {
                db.Entry(anuncios).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CODCAT = new SelectList(db.CATEGORIAS, "CODCAT", "DCRCAT", anuncios.CODCAT);
            ViewBag.CODCID = new SelectList(db.CIDADE_SEDE, "CODCID", "NOMCID", anuncios.CODCID);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", anuncios.CODUSU);
            return View(anuncios);
        }

        //
        // GET: /Anuncio/Delete/5

        public ActionResult Delete(int id = 0)
        {
            ANUNCIOS anuncios = db.ANUNCIOS.Find(id);
            if (anuncios == null)
            {
                return HttpNotFound();
            }
            return View(anuncios);
        }

        //
        // POST: /Anuncio/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            ANUNCIOS anuncios = db.ANUNCIOS.Find(id);
            db.ANUNCIOS.Remove(anuncios);
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