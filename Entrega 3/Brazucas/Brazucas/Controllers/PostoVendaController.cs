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
    public class PostoVendaController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /PostoVenda/

        public ActionResult Index()
        {
            var postosvendas = db.POSTOSVENDAS.Include(p => p.CIDADE_SEDE);
            return View(postosvendas.ToList());
        }

        //
        // GET: /PostoVenda/Details/5

        public ActionResult Details(int id = 0)
        {
            POSTOSVENDAS postosvendas = db.POSTOSVENDAS.Find(id);
            if (postosvendas == null)
            {
                return HttpNotFound();
            }
            return View(postosvendas);
        }

        //
        // GET: /PostoVenda/Create

        public ActionResult Create()
        {
            ViewBag.CODCID = new SelectList(db.CIDADE_SEDE, "CODCID", "NOMCID");
            return View();
        }

        //
        // POST: /PostoVenda/Create

        [HttpPost]
        public ActionResult Create(POSTOSVENDAS postosvendas)
        {
            if (ModelState.IsValid)
            {
                db.POSTOSVENDAS.Add(postosvendas);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CODCID = new SelectList(db.CIDADE_SEDE, "CODCID", "NOMCID", postosvendas.CODCID);
            return View(postosvendas);
        }

        //
        // GET: /PostoVenda/Edit/5

        public ActionResult Edit(int id = 0)
        {
            POSTOSVENDAS postosvendas = db.POSTOSVENDAS.Find(id);
            if (postosvendas == null)
            {
                return HttpNotFound();
            }
            ViewBag.CODCID = new SelectList(db.CIDADE_SEDE, "CODCID", "NOMCID", postosvendas.CODCID);
            return View(postosvendas);
        }

        //
        // POST: /PostoVenda/Edit/5

        [HttpPost]
        public ActionResult Edit(POSTOSVENDAS postosvendas)
        {
            if (ModelState.IsValid)
            {
                db.Entry(postosvendas).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CODCID = new SelectList(db.CIDADE_SEDE, "CODCID", "NOMCID", postosvendas.CODCID);
            return View(postosvendas);
        }

        //
        // GET: /PostoVenda/Delete/5

        public ActionResult Delete(int id = 0)
        {
            POSTOSVENDAS postosvendas = db.POSTOSVENDAS.Find(id);
            if (postosvendas == null)
            {
                return HttpNotFound();
            }
            return View(postosvendas);
        }

        //
        // POST: /PostoVenda/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            POSTOSVENDAS postosvendas = db.POSTOSVENDAS.Find(id);
            db.POSTOSVENDAS.Remove(postosvendas);
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