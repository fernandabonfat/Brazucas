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
    public class RankingController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /Ranking/

        public ActionResult Index()
        {
            var ranking = db.RANKING.Include(r => r.PONTUACAO).Include(r => r.RODADA).Include(r => r.USUARIOS);
            return View(ranking.ToList());
        }

        //
        // GET: /Ranking/Details/5

        public ActionResult Details(int id = 0)
        {
            RANKING ranking = db.RANKING.Find(id);
            if (ranking == null)
            {
                return HttpNotFound();
            }
            return View(ranking);
        }

        //
        // GET: /Ranking/Create

        public ActionResult Create()
        {
            ViewBag.CODPONT = new SelectList(db.PONTUACAO, "CODPONT", "DCRPONT");
            ViewBag.CODRODADA = new SelectList(db.RODADA, "CODRODADA", "DCRTIPUSU");
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU");
            return View();
        }

        //
        // POST: /Ranking/Create

        [HttpPost]
        public ActionResult Create(RANKING ranking)
        {
            if (ModelState.IsValid)
            {
                db.RANKING.Add(ranking);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CODPONT = new SelectList(db.PONTUACAO, "CODPONT", "DCRPONT", ranking.CODPONT);
            ViewBag.CODRODADA = new SelectList(db.RODADA, "CODRODADA", "DCRTIPUSU", ranking.CODRODADA);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", ranking.CODUSU);
            return View(ranking);
        }

        //
        // GET: /Ranking/Edit/5

        public ActionResult Edit(int id = 0)
        {
            RANKING ranking = db.RANKING.Find(id);
            if (ranking == null)
            {
                return HttpNotFound();
            }
            ViewBag.CODPONT = new SelectList(db.PONTUACAO, "CODPONT", "DCRPONT", ranking.CODPONT);
            ViewBag.CODRODADA = new SelectList(db.RODADA, "CODRODADA", "DCRTIPUSU", ranking.CODRODADA);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", ranking.CODUSU);
            return View(ranking);
        }

        //
        // POST: /Ranking/Edit/5

        [HttpPost]
        public ActionResult Edit(RANKING ranking)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ranking).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CODPONT = new SelectList(db.PONTUACAO, "CODPONT", "DCRPONT", ranking.CODPONT);
            ViewBag.CODRODADA = new SelectList(db.RODADA, "CODRODADA", "DCRTIPUSU", ranking.CODRODADA);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", ranking.CODUSU);
            return View(ranking);
        }

        //
        // GET: /Ranking/Delete/5

        public ActionResult Delete(int id = 0)
        {
            RANKING ranking = db.RANKING.Find(id);
            if (ranking == null)
            {
                return HttpNotFound();
            }
            return View(ranking);
        }

        //
        // POST: /Ranking/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            RANKING ranking = db.RANKING.Find(id);
            db.RANKING.Remove(ranking);
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