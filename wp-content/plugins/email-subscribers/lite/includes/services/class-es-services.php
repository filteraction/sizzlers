<?php

class ES_Services {
	/**
	 * @since 4.6.0
	 * @var string
	 *
	 */
	public $api_url = "https://api.icegram.com";

	/**
	 * @var string
	 *
	 * @sinc 4.6.0
	 */
	public $cmd = '';

	/**
	 * ES_Services constructor.
	 *
	 * @since 4.6.0
	 */
	public function __construct() {

	}

	/**
	 * Send Request
	 *
	 * @param array $options
	 * @param string $method
	 *
	 * @since 4.6.0
	 */
	public function send_request( $options = array(), $method = 'POST' ) {

		$data = new WP_Error( '404', 'Unknown Error' );

		if ( empty( $this->cmd ) ) {
			return new WP_Error( '404', 'Command Not Found' );
		}

		$url = $this->api_url . $this->cmd;

		if ( 'POST' === $method ) {
			$response = wp_remote_post( $url, $options );
		} else {
			$response = wp_remote_get( $url, $options );
		}

		if ( ! is_wp_error( $response ) ) {

			if ( 200 === wp_remote_retrieve_response_code( $response ) ) {

				$response_data = $response['body'];

				if ( 'error' != $response_data ) {
					return json_decode( $response_data, true );
				}
			}

		}

		return $response;

	}
}
