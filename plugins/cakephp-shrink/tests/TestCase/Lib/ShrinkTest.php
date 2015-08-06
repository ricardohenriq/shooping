<?php
namespace Shrink\Test\TestCase\Lib;

use Shrink\Lib\Shrink;
use Cake\Filesystem\File;
use Cake\TestSuite\TestCase;

class ShrinkTest extends TestCase
{

	/**
	* setup any prelimiary structure before a test
	*
	* @return void
	*/
	public function setUp() {
		parent::setUp();

		$this->Shrink = new Shrink();
	}


	/**
	* do any break down after a test
	*
	* @return void
	*/
	public function tearDown() {
		parent::tearDown();

		unset($this->Shrink);
	}


	/**
	* Test that css type files are processed
	*
	* @return void
	*/
	public function testShrinkCss(){
		$ret = $this->Shrink->build([
				'base.css',
				'base.less',
				'base.scss'
			], 'css');

		// verify the result has the proper keys
		$this->assertArrayHasKey('path', $ret);
		$this->assertArrayHasKey('webPath', $ret);

		// verify we were returned a file
		$this->assertFileExists($ret['path']);

		// verify the contents
		$cacheFile = new File($ret['path']);
		$result = $cacheFile->read();
		$cacheFile->delete();
		$cacheFile->close();

		$expectedfile = new File(WWW_ROOT .'css/base.shrink.css');
		$expect = $expectedfile->read();
		$expectedfile->close();

		$this->assertEquals($expect, $result);
	}


	/**
	* Test that js files are properly processed
	*
	* @return void
	*/
	public function testShrinkJs(){
		$ret = $this->Shrink->build([
				'base.js',
				'base.coffee'
			], 'js');

		// verify the result has the proper keys
		$this->assertArrayHasKey('path', $ret);
		$this->assertArrayHasKey('webPath', $ret);

		// verify we were returned a file
		$this->assertFileExists($ret['path']);

		// verify the contents
		$cacheFile = new File($ret['path']);
		$result = $cacheFile->read();
		$cacheFile->delete();
		$cacheFile->close();

		$expectedfile = new File(WWW_ROOT .'js/base.shrink.js');
		$expect = $expectedfile->read();
		$expectedfile->close();

		$this->assertEquals($expect, $result);
	}
	
}