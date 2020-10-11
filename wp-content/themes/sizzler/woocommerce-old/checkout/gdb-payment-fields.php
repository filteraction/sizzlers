<?php
 if ( $gateway->has_fields() || $gateway->get_description() ) : ?>

			<div id="method_<?php echo esc_attr( $gateway->id ); ?>" class="tab-pane container <?php if ($count==1){echo 'active';}?> ">
				<div id="method_<?php echo esc_attr( $gateway->id ); ?>" class="payment_box payment_method_<?php echo esc_attr( $gateway->id ); ?>" <?php if ( ! $gateway->chosen ) : /* phpcs:ignore Squiz.ControlStructures.ControlSignature.NewlineAfterOpenBrace */ ?>style="display:none;"<?php endif; /* phpcs:ignore Squiz.ControlStructures.ControlSignature.NewlineAfterOpenBrace */ ?>>
					<?php $gateway->payment_fields(); ?>
			
				</div>
			</div>

		
	<?php endif; ?>