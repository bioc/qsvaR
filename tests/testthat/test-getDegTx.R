rse_tx_low <- covComb_tx_deg[rowMeans(assays(covComb_tx_deg)$tpm) < 1, ]
test_that("length for number of rows is the same a length sig_transcripts", {
    expect_equal(length(rownames(getDegTx(covComb_tx_deg))), length(select_transcripts("cell_component")))
})

test_that("length for number of columns is the same a length sig_transcripts", {
    expect_equal(length(colnames(getDegTx(covComb_tx_deg))), length(colnames(covComb_tx_deg)))
})

test_that("output is an RSE", {
    expect_equal(class(getDegTx(covComb_tx_deg)), class(covComb_tx_deg))
})

test_that("test warning output for lowly expressed transcripts", {
    expect_warning(getDegTx(rse_tx_low))
})
