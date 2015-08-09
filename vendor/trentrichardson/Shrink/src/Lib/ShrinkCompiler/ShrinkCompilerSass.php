<?php
namespace Shrink\Lib\ShrinkCompiler;

use Shrink\Lib\ShrinkCompiler\ShrinkCompilerInterface;
use Shrink\Lib\ShrinkBase;

class ShrinkCompilerSass extends ShrinkBase implements ShrinkCompilerInterface{

	public $resultType = 'css';

	protected $settings = [
			'sass'=>[
					'sass'=>'/usr/bin/sass',
					'path'=>'/usr/bin'
				]
		];


	/**
	* Processes/minify/combines queued files of the requested type.
	* @param CakeFile file - 'js' or 'css'. This should be the end result type
	* @return string - code string minified/processed as requested
	*/
	public function compile($file){
		$code = '';
		$style = 'compact';

		// compile scss
		$cmd = $this->settings['sass']['sass'] .' -t '. $style .' '. $file->path;
		$env = array('PATH'=>$this->settings['sass']['path']);
		$code = $this->cmd($cmd, null, $env);

		return $code;
	}
}
