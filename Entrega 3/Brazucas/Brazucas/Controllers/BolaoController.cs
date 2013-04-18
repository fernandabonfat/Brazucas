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
    public class BolaoController : Controller
    {
        private BrazucasEntities db = new BrazucasEntities();

        //
        // GET: /Bolao/

        public ActionResult Index()
        {
            var bolao = db.BOLAO.Include(b => b.JOGOS).Include(b => b.RODADA).Include(b => b.USUARIOS);
            return View(bolao.ToList());
        }

        //
        // GET: /Bolao/Details/5

        public ActionResult Details(int id = 0)
        {
            BOLAO bolao = db.BOLAO.Find(id);
            if (bolao == null)
            {
                return HttpNotFound();
            }
            return View(bolao);
        }

        //
        // GET: /Bolao/Create

        public ActionResult Create()
        {
            ViewBag.CODJOGO = new SelectList(db.JOGOS, "CODJOGO", "CODJOGO");
            ViewBag.CODRODADA = new SelectList(db.RODADA, "CODRODADA", "DCRTIPUSU");
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU");
            return View();
        }

        //
        // POST: /Bolao/Create

        [HttpPost]
        public ActionResult Create(BOLAO bolao)
        {
            if (ModelState.IsValid)
            {
                db.BOLAO.Add(bolao);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CODJOGO = new SelectList(db.JOGOS, "CODJOGO", "CODJOGO", bolao.CODJOGO);
            ViewBag.CODRODADA = new SelectList(db.RODADA, "CODRODADA", "DCRTIPUSU", bolao.CODRODADA);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", bolao.CODUSU);
            return View(bolao);
        }

        //
        // GET: /Bolao/Edit/5

        public ActionResult Edit(int id = 0)
        {
            BOLAO bolao = db.BOLAO.Find(id);
            if (bolao == null)
            {
                return HttpNotFound();
            }
            ViewBag.CODJOGO = new SelectList(db.JOGOS, "CODJOGO", "CODJOGO", bolao.CODJOGO);
            ViewBag.CODRODADA = new SelectList(db.RODADA, "CODRODADA", "DCRTIPUSU", bolao.CODRODADA);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", bolao.CODUSU);
            return View(bolao);
        }

        //
        // POST: /Bolao/Edit/5

        [HttpPost]
        public ActionResult Edit(BOLAO bolao)
        {
            if (ModelState.IsValid)
            {
                db.Entry(bolao).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CODJOGO = new SelectList(db.JOGOS, "CODJOGO", "CODJOGO", bolao.CODJOGO);
            ViewBag.CODRODADA = new SelectList(db.RODADA, "CODRODADA", "DCRTIPUSU", bolao.CODRODADA);
            ViewBag.CODUSU = new SelectList(db.USUARIOS, "CODUSU", "NOMUSU", bolao.CODUSU);
            return View(bolao);
        }

        //
        // GET: /Bolao/Delete/5

        public ActionResult Delete(int id = 0)
        {
            BOLAO bolao = db.BOLAO.Find(id);
            if (bolao == null)
            {
                return HttpNotFound();
            }
            return View(bolao);
        }

        //
        // POST: /Bolao/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            BOLAO bolao = db.BOLAO.Find(id);
            db.BOLAO.Remove(bolao);
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