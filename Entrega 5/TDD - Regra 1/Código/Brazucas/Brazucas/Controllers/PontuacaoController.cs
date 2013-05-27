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
    public class PontuacaoController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /Pontuacao/

        public ActionResult Index()
        {
            return View(db.PONTUACAO.ToList());
        }

        //
        // GET: /Pontuacao/Details/5

        public ActionResult Details(int id = 0)
        {
            PONTUACAO pontuacao = db.PONTUACAO.Find(id);
            if (pontuacao == null)
            {
                return HttpNotFound();
            }
            return View(pontuacao);
        }

        //
        // GET: /Pontuacao/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Pontuacao/Create

        [HttpPost]
        public ActionResult Create(PONTUACAO pontuacao)
        {
            if (ModelState.IsValid)
            {
                db.PONTUACAO.Add(pontuacao);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(pontuacao);
        }

        //
        // GET: /Pontuacao/Edit/5

        public ActionResult Edit(int id = 0)
        {
            PONTUACAO pontuacao = db.PONTUACAO.Find(id);
            if (pontuacao == null)
            {
                return HttpNotFound();
            }
            return View(pontuacao);
        }

        //
        // POST: /Pontuacao/Edit/5

        [HttpPost]
        public ActionResult Edit(PONTUACAO pontuacao)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pontuacao).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(pontuacao);
        }

        //
        // GET: /Pontuacao/Delete/5

        public ActionResult Delete(int id = 0)
        {
            PONTUACAO pontuacao = db.PONTUACAO.Find(id);
            if (pontuacao == null)
            {
                return HttpNotFound();
            }
            return View(pontuacao);
        }

        //
        // POST: /Pontuacao/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            PONTUACAO pontuacao = db.PONTUACAO.Find(id);
            db.PONTUACAO.Remove(pontuacao);
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