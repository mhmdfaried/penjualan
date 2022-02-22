<!DOCTYPE html>
<html>

<head>
    <title>Data Barang</title>
</head>

<body>
    <h3>Pilih Data Barang</h3>
    <form action="<?php echo $_SERVER["PHP_SELF"];?>" method="get">
        <table>
            <tr>
                <td>Pilih Barang</td>
                <td>:</td>
                <td>
                    <select name="id">
                        <?php
                    include "koneksi.php";
                    $sql = "select id,nb from tb";
                    $hasil = mysqli_query($conn,$sql);
                    $no=0;
                    while ($data = mysqli_fetch_array($hasil)) {
                        $no++;
                        $ket="";
                        if (isset($_GET['id'])){
                            $id = $trim($_GET['id']);

                            if($id==$data['id'])
                            {
                                $ket="selected";
                            }
                        }
                    ?>
                        <option <?php echo $ket;?> value="<?php echo $data['id']?>">
                            <?php echo $data['id'];?> - <?php echo $data['nb'];?>
                        </option>
                        <?php
                    }
                ?>
                    </select>
                </td>
                <td>
                    <input type="submit" name="submit" value="Pilih">
                </td>
            </tr>
        </table>
    </form>

    <h2>Detail Data Barang</h2>
    <?php
    if (isset($_GET['id'])) {
        $id = $_GET['id'];

        $sql = "SELECT * FROM tb where id=$id";
        $hasil = mysqli_query($conn,$sql);
        $data = mysqli_fetch_assoc($hasil);
    }
    ?>
    <table>
        <tr>
            <td>ID</td>
            <td>:</td>
            <td><input type="text" name="id" value="<?php echo $data['id'];?>"></td>
        </tr>
        <tr>
            <td>Nama Barang</td>
            <td>:</td>
            <td><input type="text" name="nb" value="<?php echo $data['nb'];?>"></td>
        </tr>
        <tr>
            <td>Harga</td>
            <td>:</td>
            <td><input type="text" name="hrg" value="<?php echo $data['hrg'];?>"></td>
        </tr>
        <tr>
            <td>Stok</td>
            <td>:</td>
            <td><input type="text" name="stok" value="<?php echo $data['stok'];?>"></td>
        </tr>
        <tr>
            <td>Jumlah yang dibeli</td>
            <td>:</td>
            <td><input type="number" name="stok"></td>
        </tr>
        <tr>
            <td>Total Harga</td>
            <td>:</td>
            <td><input type="text" name="stok"></td>
        </tr>
    </table>
</body>

</html>