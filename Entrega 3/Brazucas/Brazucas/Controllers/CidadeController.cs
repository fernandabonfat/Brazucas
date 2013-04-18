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
    public class CidadeController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /Cidade/

        public ActionResult Index()
        {
            return View(db.CIDADE_SEDE.ToList());
        }

        //
        // GET: /Cidade/Details/5

        public ActionResult Details(int id = 0)
        {
            CIDADE_SEDE cidade_sede = db.CIDADE_SEDE.Find(id);
            if (cidade_sede == null)
            {
                return HttpNotFound();
            }
            return View(cidade_sede);
        }

        //
        // GET: /Cidade/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Cidade/Create

        [HttpPost]
        public ActionResult Create(CIDADE_SEDE cidade_sede)
        {
            if (ModelState.IsValid)
            {
                db.CIDADE_SEDE.Add(cidade_sede);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(cidade_sede);
        }

        //
        // GET: /Cidade/Edit/5

        public ActionResult Edit(int id = 0)
        {
            CIDADE_SEDE cidade_sede = db.CIDADE_SEDE.Find(id);
            if (cidade_sede == null)
            {
                return HttpNotFound();
            }
            return View(cidade_sede);
        }

        //
        // POST: /Cidade/Edit/5

        [HttpPost]
        public ActionResult Edit(CIDADE_SEDE cidade_sede)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cidade_sede).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(cidade_sede);
        }

        //
        // GET: /Cidade/Delete/5

        public ActionResult Delete(int id = 0)
        {
            CIDADE_SEDE cidade_sede = db.CIDADE_SEDE.Find(id);
            if (cidade_sede == null)
            {
                return HttpNotFound();
            }
            return View(cidade_sede);
        }

        //
        // POST: /Cidade/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            CIDADE_SEDE cidade_sede = db.CIDADE_SEDE.Find(id);
            db.CIDADE_SEDE.Remove(cidade_sede);
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