/*
SQLyog Ultimate - MySQL GUI v8.21 
MySQL - 5.5.5-10.1.33-MariaDB : Database - db_siexp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_siexp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_siexp`;

/*Table structure for table `tb_barang` */

DROP TABLE IF EXISTS `tb_barang`;

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `type_barang` varchar(50) NOT NULL,
  `merk` char(50) NOT NULL,
  `kategori` char(50) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_barang`),
  UNIQUE KEY `id` (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_barang` */

insert  into `tb_barang`(`id_barang`,`type_barang`,`merk`,`kategori`,`harga`) values (1,'BRG001','Lampu Merah','Perabotan',70),(2,'BRG002','Lampu Merah','Perabotan',50);

/*Table structure for table `tb_kategori` */

DROP TABLE IF EXISTS `tb_kategori`;

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` char(50) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_kategori` */

insert  into `tb_kategori`(`id_kategori`,`kategori`) values (1,'Perabotan');

/*Table structure for table `tb_merk` */

DROP TABLE IF EXISTS `tb_merk`;

CREATE TABLE `tb_merk` (
  `id_merk` int(11) NOT NULL AUTO_INCREMENT,
  `merk` char(50) NOT NULL,
  PRIMARY KEY (`id_merk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_merk` */

insert  into `tb_merk`(`id_merk`,`merk`) values (1,'Lampu Merah'),(2,'Kaca');

/*Table structure for table `tb_pelanggan` */

DROP TABLE IF EXISTS `tb_pelanggan`;

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `pelanggan` char(50) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pelanggan` */

insert  into `tb_pelanggan`(`id_pelanggan`,`pelanggan`) values (1,'CV Test');

/*Table structure for table `tb_penjualan` */

DROP TABLE IF EXISTS `tb_penjualan`;

CREATE TABLE `tb_penjualan` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_transaksi` date NOT NULL,
  `type_barang` varchar(150) NOT NULL,
  `merk_barang` char(50) NOT NULL,
  `kategori_barang` char(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `jenis_pelanggan` char(50) NOT NULL,
  `jenis_pembayaran` char(50) NOT NULL,
  `status_pembayaran` char(50) NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tb_penjualan` */

insert  into `tb_penjualan`(`id_transaksi`,`tgl_transaksi`,`type_barang`,`merk_barang`,`kategori_barang`,`harga`,`qty`,`total`,`jenis_pelanggan`,`jenis_pembayaran`,`status_pembayaran`) values (2,'2019-01-05','BRG002','Lampu Merah','Perabotan',50,1,50,'Direct','Cash','Lunas'),(3,'2019-01-02','BRG001','Lampu Merah','Perabotan',10,1,10,'Online','Cash','Kredit'),(4,'2019-01-08','BRG001','Lampu Merah','Perabotan',10,1,10,'Online','Cash','Lunas'),(5,'2019-01-21','BRG002','Lampu Merah','Perabotan',50,1,50,'Online','Cash','Lunas'),(6,'2019-01-10','BRG001','Lampu Merah','Perabotan',10,1,10,'Direct','Cash','Kredit'),(7,'2019-01-03','BRG001','Lampu Merah','Perabotan',10,1,10,'Online','Cash','Lunas'),(8,'2019-01-18','BRG001','Lampu Merah','Perabotan',1,1,1,'Online','Transfer','Lunas'),(9,'2019-02-01','BRG002','Lampu Merah','Perabotan',50,1,50,'Online','Transfer','Credit');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`username`,`password`,`user_level`) values (1,'admin','123',1),(2,'bos','123',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
