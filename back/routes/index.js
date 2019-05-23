var express = require('express');
var router = express.Router();
const mysql = require('mysql');
const con = mysql.createConnection(require('../dbconfig/dbconfig.js'))

router.post('/member/login',(req,res) =>{
  const id = req.body.id
  const pw = req.body.pw
  const sql = `select * from member where id=? and pw=?`
  con.query(sql, [id, pw], (err, results, field)=>{
    console.log(results)
    res.json(results)
  })
})

router.post('/member/join', (req, res) => {
  const id = req.body.id
  const pw = req.body.pw
  const name = req.body.name
  const chk = `select count(*) from member where id=?`
  const sql = `insert into member set id=?,pw=?,name=?`
  con.query(chk, [id], (err, results, field) => {
    res.json(results)
    console.log(results[0])
    if (results[0]['count(*)'] == 0) {
      con.query(sql, [id, pw, name])
    }
  })
})

router.get('/board', (req,res) =>{
  const sql = `select * from board order by date desc`
  con.query(sql,(err,results,field)=> {
      res.json(results)
  })
})

router.post('/board/write', (req, res) => {
  const writer = req.body.writer
  const subject = req.body.subjecta
  const content = req.body.content
  const sql = `insert into board set writer=?, subject=?, content=?, date=now()`
  con.query(sql, [writer, subject, content], (err,results,field) => {
    res.json(results)
  })
})

router.get('/board/view/:idx', (req, res) => {
  const idx = req.params.idx
  const sql = `select * from board where idx=?`
  con.query(sql, [idx], (err, results, field) => {
    res.json(results)
  })
  con.query(`update board set hit=hit+1 where idx=?`, [idx])
})
module.exports = router;
