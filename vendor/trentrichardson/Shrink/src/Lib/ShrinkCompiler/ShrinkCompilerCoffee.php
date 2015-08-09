<?php
namespace Shrink\Lib\ShrinkCompiler;

use Shrink\Lib\ShrinkCompiler\ShrinkCompilerInterface;
use Shrink\Lib\ShrinkBase;

class ShrinkCompilerCoffee extends ShrinkBase implements ShrinkCompilerInterface{

	public $resultType = 'js';

	protected $settings = [
			'coffee'=>[
					'coffee'=>'/usr/local/bin/coffee',
					'node' => '/usr/local/bin/node',
					'node_path' => '/usr/local/lib/node_modules'
				]
		];


	/**
	* Processes/minify/combines queued files of the requested type.
	* @param CakeFile file - 'js' or 'css'. This should be the end result type
	* @return string - code string minified/processed as requested
	*/
	public function compile($file){
		$code = '';

		// compile coffee script
		$cmd = $this->settings['coffee']['node'] .' '. $this->settings['coffee']['coffee'] .' -c -p '. $file->path;
		$env = array('NODE_PATH'=>$this->settings['coffee']['node_path']);
		$code = $this->cmd($cmd, null, $env);

		return $code;
	}

}
