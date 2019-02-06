using MvcTest2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;

namespace MvcTest2.Controllers
{
    public class HomeController : Controller
    {
        SAMPLEEntities db = new SAMPLEEntities();
        // GET: Home
        public ActionResult Index(int? page, string sortby)
        {
            ViewBag.SortFirstNParam = string.IsNullOrEmpty(sortby) ? "FirstName Desc" :"";
            ViewBag.SortLastNParam = string.IsNullOrEmpty(sortby) ? "LastName Desc" : "";
            ViewBag.SortSkillParam = string.IsNullOrEmpty(sortby) ? "Skills Desc" : "";
            var users = db.Users.AsQueryable();
            switch (sortby)
            {
                case "FirstName Desc":
                    users = users.OrderByDescending(x => x.FirstName);
                    break;
                case "LastName Desc":
                    users = users.OrderByDescending(x => x.LastName);
                    break;
                case "Skills Desc":
                    users = users.OrderByDescending(x => x.Skills);
                    break;
                default:
                    users = users.OrderBy(x => x.FirstName);
                    break;
            }
            return View(users.ToPagedList(page ?? 1, 3));
        }

        // GET: Home/Details/5
        public ActionResult Details(string findskill,int? page)
        {
            ViewBag.Skills = db.tblSkills.ToList();                  

             return View(db.Users.Where(x => x.Skills.Contains(findskill)|| findskill == null).ToList().ToPagedList(page ?? 1, 3));
    
        }
        
        // GET: Home/Create
        public ActionResult Create()
        {
            SAMPLEEntities db = new SAMPLEEntities();
            ViewBag.Skills = db.tblSkills.ToList();
            return View();
        }

        // POST: Home/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here
                SAMPLEEntities db = new SAMPLEEntities();
                User newuser = new User();
                string skills = collection["Skills"];
                string firstName = collection["FirstName"];
                string LastName = collection["LastName"];
                newuser.FirstName = firstName;
                newuser.LastName = LastName;
                newuser.Skills = skills;
                db.Users.Add(newuser);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

       
    }
}
