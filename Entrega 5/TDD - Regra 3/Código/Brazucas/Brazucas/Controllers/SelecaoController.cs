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
    public class SelecaoController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /Selecao/
        public ActionResult ListaSelecoes()
        {
            return View(db.SELECOES.ToList());
        }
        public ActionResult Visualiza(int id = 0)
        {
            SELECOES selecoes = db.SELECOES.Find(id);
            if (selecoes == null)
            {
                return HttpNotFound();
            }
            return View(selecoes);
        }
        public ActionResult Index()
        {
            return View(db.SELECOES.ToList());
        }

        //
        // GET: /Selecao/Details/5

        public ActionResult Details(int id = 0)
        {
            SELECOES selecoes = db.SELECOES.Find(id);
            if (selecoes == null)
            {
                return HttpNotFound();
            }
            return View(selecoes);
        }

        //
        // GET: /Selecao/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Selecao/Create

        [HttpPost]
        public ActionResult Create(SELECOES selecoes)
        {
            if (ModelState.IsValid)
            {
                db.SELECOES.Add(selecoes);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(selecoes);
        }

        //
        // GET: /Selecao/Edit/5

        public ActionResult Edit(int id = 0)
        {
            SELECOES selecoes = db.SELECOES.Find(id);
            if (selecoes == null)
            {
                return HttpNotFound();
            }
            return View(selecoes);
        }

        //
        // POST: /Selecao/Edit/5

        [HttpPost]
        public ActionResult Edit(SELECOES selecoes)
        {
            if (ModelState.IsValid)
            {
                db.Entry(selecoes).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(selecoes);
        }

        //
        // GET: /Selecao/Delete/5

        public ActionResult Delete(int id = 0)
        {
            SELECOES selecoes = db.SELECOES.Find(id);
            if (selecoes == null)
            {
                return HttpNotFound();
            }
            return View(selecoes);
        }

        //
        // POST: /Selecao/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            SELECOES selecoes = db.SELECOES.Find(id);
            db.SELECOES.Remove(selecoes);
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