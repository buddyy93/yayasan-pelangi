<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 7/14/2019
 * Time: 10:13 PM
 */

class Testing extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function index()
	{
		$this->load->view('index');
	}

	public function get()
	{
		$region = $this->input->get('region');
		if (isset($region))
		{
			$datas = $this->db->where('region', $region)->get('test')->result_array();
		} else
		{
			$datas = $this->db->get('test')->result_array();
		}
		echo json_encode($datas);
	}

	public function getPieData()
	{
		$region = $this->input->get('region');
		if (isset($region))
		{
			$sql = "select status, count(*) count from test where region='$region' group by status";
		} else
		{
			$sql = 'select status, count(*) count from test group by status';
		}
		$datas = $this->db->query($sql)->result_array();
		echo json_encode($datas);
	}

	public function getPieTableData()
	{
		$region = $this->input->get('region');
		$status = $this->input->get('status');

		if (isset($region) && isset($status))
		{
			$where = array('region' => $region, 'status' => $status);
		} else
		{
			$where = array('status' => $status);
		}
		$datas = $this->db->where($where)->get('test')->result_array();
		echo json_encode($datas);
	}
}
